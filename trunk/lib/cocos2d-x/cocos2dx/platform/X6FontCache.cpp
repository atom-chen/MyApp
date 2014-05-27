#include "X6FontCache.h"
#include "cocos2d.h"
#include "CCImage.h"
#include <wchar.h>

NS_CC_BEGIN

//utf8�ַ�����1-6�����Ը���ÿ���ַ���һ���ֽ��ж������ַ�����
//0xxxxxxx
//110xxxxx 10xxxxxx
//1110xxxx 10xxxxxx 10xxxxxx
//11110xxx 10xxxxxx 10xxxxxx 10xxxxxx
//111110xx 10xxxxxx 10xxxxxx 10xxxxxx 10xxxxxx
//1111110x 10xxxxxx 10xxxxxx 10xxxxxx 10xxxxxx 10xxxxxx
//
//������ұ�����256�����е���ֵ��ʾ�Դ�Ϊ��ʼ�ֽڵ�utf8�ַ�����
unsigned char utf8_look_for_table[] = 
{
	1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
	1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
	1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
	1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
	1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
	1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
	1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
	1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
	1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
	1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
	1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
	1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
	2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
	2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
	3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
	4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 1, 1
};

#define UTFLEN(x)  utf8_look_for_table[(x)]

map<string, int> X6FontCache::s_fontSizeMap;				// ��ǰ����ʹ��ʱ��
map<string, unsigned long> X6FontCache::s_fontClrMap;		// ������ɫӳ���
map<string, CCImage*> X6FontCache::s_fontImgMap;			// ����ͼ��ӳ���
map<string, unsigned int> X6FontCache::s_fontUseTimeMap;	// ����ʹ��ʱ��ӳ���
int X6FontCache::s_fontCnt = 0;				// ����������Ŀ
unsigned int X6FontCache::s_fontUseTime = 0;	// ��ǰ����ʹ��ʱ��

void X6FontCache::clear()
{
	CCImage *pImg;
	for (map<string, CCImage*>::iterator iter=s_fontImgMap.begin(); iter!=s_fontImgMap.end(); ++iter )
	{
		pImg = iter->second;
		if( pImg ) 
		{
			pImg->release();
		}
	}

	s_fontImgMap.clear();
	s_fontUseTimeMap.clear();
	s_fontCnt = 0;
	s_fontUseTime = 0;
}

void X6FontCache::clearOutdates()
{
	if( s_fontImgMap.size()<=0 )
		return;

	// �жϻ�������������Ƿ񳬳�����
	if( s_fontCnt<=MAX_FONT_CNT )
		return;

	// ʱ��Ѳ����һ�Σ��򵥴ֱ��İ��������嶼���
	if( s_fontUseTime<s_fontUseTimeMap.begin()->second )
	{
		clear();
		CCLOG("ʱ��Ѳ�أ������������");
		return;
	}

	// �ռ���Ҫ��յ�key
	vector<string> clearKeys;
	unsigned int outDate = s_fontUseTime-CLEAR_CNT;
	for (map<string, unsigned int>::iterator iter=s_fontUseTimeMap.begin(); iter!=s_fontUseTimeMap.end(); ++iter )
	{
		if( iter->second<outDate )
		{
			clearKeys.push_back(iter->first);
		}
	}

	CCImage *pImg;
	string key;
	int numKey = clearKeys.size();
	for( int i=0; i<numKey; ++i )
	{
		key = clearKeys[i];
		pImg = s_fontImgMap[key];
		if( pImg )
		{
			pImg->release();
		}

		s_fontUseTimeMap.erase(key);
		s_fontImgMap.erase(key);
	}

	s_fontCnt -= numKey;
}

void X6FontCache::addFontColorMark(const char* mark, unsigned long color)
{
	if( !mark || strlen(mark)<=0 )
		return;

	s_fontClrMap[mark] = color;
}

void X6FontCache::addFontSizeMark(const char* mark, int size)
{
	if( !mark || strlen(mark)<=0 )
		return;

	s_fontSizeMap[mark] = size;
}

bool X6FontCache::hasFontMark(const char* pText)
{
	if( !pText )
		return false;

	if( strstr(pText, "<c") )
		return true;

	if( strstr(pText, "<f") )
		return true;

	return false;
}

bool X6FontCache::generateTextLines(
	vector<vector<CCImage*> > &lines,
	const char *    pText, 
	const char *    pFontName,
	int             nSize,
	bool shadow/*                 = false*/,
	float shadowOffsetX/*         = 0.0*/,
	float shadowOffsetY/*         = 0.0*/,
	float shadowOpacity/*         = 0.0*/,
	float shadowBlur/*            = 0.0*/,
	bool  stroke/*                =  false*/,
	float strokeR/*               = 1*/,
	float strokeG/*               = 1*/,
	float strokeB/*               = 1*/,
	float strokeSize/*            = 1*/)
{
	bool bRet = false;
	do 
	{
		CC_BREAK_IF(! pText);

		lines.push_back(vector<CCImage*>());

		//unsigned long curClr = 0xffffff;
		//int curSize = nSize;

		vector<unsigned long> clrStack;
		vector<int> sizeStack;
		clrStack.push_back(0xffffff);
		sizeStack.push_back(nSize);

		unsigned long curClr = clrStack.back();
		int curSize = sizeStack.back();

		char temp[256];
		unsigned char charLen;
		char charBuff[10];

		int nLen = strlen(pText);
		//int len = 0;

		string key;
		CCImage *img;
		string ctrlCode;
		for (int i=0; *pText!=0&&i<nLen; )
		{
			charLen = UTFLEN((unsigned char)*pText);

			memcpy(charBuff, pText, charLen);
			charBuff[charLen] = '\0';

			// ��tabת��Ϊ�ո�
			if( charBuff[0]=='\t' )
			{
				charBuff[0] = ' ';
			}

			// ����
			if( charBuff[0]=='\n' )
			{
				lines.push_back(vector<CCImage*>());
				i += charLen;
				pText += charLen;
				continue;
			}

			// ������
			if( charBuff[0]=='<' 
				&& (((i+3)<nLen && pText[3]=='>')
				|| ((i+4)<nLen && pText[4]=='>')) )
			{
				int step = 0;
				if( pText[3]=='>' )
				{
					step = 4;
					memcpy(temp, pText+1, 2);
					temp[2] = '\0';
					ctrlCode = temp;
				}
				else
				{
					step = 5;
					memcpy(temp, pText+1, 3);
					temp[3] = '\0';
					ctrlCode = temp;
				}

				if( ctrlCode=="/c" )
				{
					if( clrStack.size()>1 )
					{
						clrStack.pop_back();
						curClr = clrStack.back();
					}
					i += step;
					pText += step;
					continue;
				}

				if( ctrlCode=="/f" )
				{
					if( sizeStack.size()>1 )
					{
						sizeStack.pop_back();
						curSize = sizeStack.back();
					}
					i += step;
					pText += step;
					continue;
				}

				if( s_fontClrMap.find(ctrlCode)!=s_fontClrMap.end() )
				{
					curClr = s_fontClrMap[ctrlCode];
					clrStack.push_back(curClr);
					i += step;
					pText += step;
					continue;
				}

				if( s_fontSizeMap.find(ctrlCode)!=s_fontSizeMap.end() )
				{
					curSize = s_fontSizeMap[ctrlCode];
					sizeStack.push_back(curSize);
					i += step;
					pText += step;
					continue;
				}
			}

			if( shadow || stroke )
			{
				sprintf(temp, "%s_%s_%d_%ld_%s_%f_%f_%f_%f_%s_%f_%f_%f_%f", charBuff, pFontName?pFontName:"", curSize, curClr,
					shadow?"d":" ", shadowOffsetX, shadowOffsetY, shadowOpacity, shadowBlur,
					stroke?"k":" ", strokeR, strokeG, strokeB, strokeSize);
			}
			else
			{
				sprintf(temp, "%s_%s_%d_%ld", charBuff, pFontName?pFontName:"", curSize, curClr);
			}

			key = temp;
			img = s_fontImgMap[key];
			if( !img )
			{
				// ����ͼ��
				img = new CCImage();
				if( !img )
				{
					// �����[]���ʰ�key�����
					s_fontImgMap.erase(key);

					pText += charLen;
					i += charLen;
					continue;
				}

				img->autorelease();

				bRet = img->initWithWord(charBuff, pFontName, curSize, curClr, 
				shadow, shadowOffsetX, shadowOffsetY, shadowOpacity,shadowBlur,
				stroke, strokeR, strokeG, strokeB, strokeSize);

				if( !bRet )
				{
					// �����[]���ʰ�key�����
					s_fontImgMap.erase(key);

					pText += charLen;
					i += charLen;
					CCLOG("�ַ���Ⱦʧ�ܣ�%s", charBuff);
					continue;
				}

				img->retain();

				s_fontImgMap[key] = img;

				// ��������
				++ s_fontCnt;
			}

			// ��¼ʹ��ʱ��
			s_fontUseTimeMap[key] = s_fontUseTime++;

			lines.back().push_back(img);

			pText += charLen;
			i += charLen;
		}

		bRet = true;
	} while (0);

	return bRet;
}

NS_CC_END