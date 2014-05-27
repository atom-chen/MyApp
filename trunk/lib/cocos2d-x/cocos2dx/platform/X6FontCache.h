#ifndef __X6_FONTCACHE_H__
#define __X6_FONTCACHE_H__

#include "cocoa/CCObject.h"
#include <map>
#include <string>
#include <vector>

NS_CC_BEGIN

using namespace std;

class CCImage;

// ���建��
class X6FontCache
{
public:
	static void addFontColorMark(const char* mark, unsigned long color);
	static void addFontSizeMark(const char* mark, int size);

	static bool hasFontMark(const char* pText);

	static void clearOutdates();

	static void clear();

	// �����ı���
	static bool generateTextLines(
		vector<vector<CCImage*> > &lines,
		const char *    pText, 
		const char *    pFontName = 0,
		int             nSize = 0,
		bool shadow                 = false,
		float shadowOffsetX         = 0.0,
		float shadowOffsetY         = 0.0,
		float shadowOpacity         = 0.0,
		float shadowBlur            = 0.0,
		bool  stroke                =  false,
		float strokeR               = 1,
		float strokeG               = 1,
		float strokeB               = 1,
		float strokeSize            = 1);

private:
	static map<string, int> s_fontSizeMap;				// �����Сӳ���
	static map<string, unsigned long> s_fontClrMap;	// ������ɫӳ���
	static map<string, CCImage*> s_fontImgMap;			// ����ͼ��ӳ���
	static map<string, unsigned int> s_fontUseTimeMap;	// ����ʹ��ʱ��ӳ���
	static const int MAX_FONT_CNT = 500;	// ��󻺴�����
	static const int CLEAR_CNT = 100;		// �����Ŀ
	static int s_fontCnt;					// ����������Ŀ
	static unsigned int s_fontUseTime;		// ��ǰ����ʹ��ʱ��
};

NS_CC_END

#endif    // __X6_FONTCACHE_H__