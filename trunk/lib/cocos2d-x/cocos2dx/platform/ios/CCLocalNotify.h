
#ifndef __CC_LOCAL_NOTIFY_H__
#define __CC_LOCAL_NOTIFY_H__

#include "platform/CCCommon.h"

NS_CC_BEGIN

class CC_DLL CCLocalNotify
{
public:
	// ����������֪ͨ
	static void setStartupNotify(UILocalNotification * n);
	// ��ȡ������֪ͨ
	static NSDictionary * getStartupNotify();
	
	// ע��Lua�Ļص�����
	static void registerLuaCallback(NSDictionary* params);
	// ����֪ͨ��Lua
	static void pushNotifyToLua(UILocalNotification * n);
	
	// ����֪ͨ��ϵͳ
	static void pushNotifyToIos(NSDictionary* params);
	
	// ȡ��֪ͨ
	static void cancelNotify(NSDictionary* params);
	// ȡ������֪ͨ
	static void cancelAllNotify();

protected:
    static UILocalNotification * m_pStartupNotify;
	static int m_luaCallback;
};

NS_CC_END

#endif    // end of __CC_LOCAL_NOTIFY_H__
