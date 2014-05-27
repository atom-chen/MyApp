
#import "CCLocalNotify.h"
#import "CCLuaBridge.h"
#import "CCLuaStack.h"
#import "CCLuaValue.h"

NS_CC_BEGIN

UILocalNotification* CCLocalNotify::m_pStartupNotify = 0;
int CCLocalNotify::m_luaCallback = 0;

void CCLocalNotify::setStartupNotify(UILocalNotification * n)
{
	if( !n )
		return;
	
	m_pStartupNotify = [n retain];
}

NSDictionary * CCLocalNotify::getStartupNotify()
{
	if( !m_pStartupNotify )
		return NULL;
		
	return m_pStartupNotify.userInfo;
}

void CCLocalNotify::registerLuaCallback(NSDictionary* params)
{
	if( m_luaCallback!=0 )
	{
		CCLuaBridge::releaseLuaFunctionById(m_luaCallback);
	}
	
	m_luaCallback = [[params objectForKey:@"callback"] intValue];
	
	if( m_luaCallback!=0 )
	{
		CCLuaBridge::retainLuaFunctionById(m_luaCallback);
	}
}

void CCLocalNotify::pushNotifyToLua(UILocalNotification * n)
{
	if( m_luaCallback==0 || !n )
		return;
		
	CCLuaValueDict dict;
	NSDictionary* value = n.userInfo;
    for (id subKey in [value allKeys]) {
        id subValue = [value objectForKey:subKey];
        dict[[subKey UTF8String]] = CCLuaValue::stringValue([subValue UTF8String]);
    }
	
	CCLuaBridge::getStack()->pushCCLuaValueDict(dict);
	CCLuaBridge::getStack()->executeFunctionByHandler(m_luaCallback, 1);
}

void CCLocalNotify::pushNotifyToIos(NSDictionary* params)
{
    //------֪ͨ��  
    UILocalNotification *notification=[[UILocalNotification alloc] init];   
    if (notification!=nil) {//�ж�ϵͳ�Ƿ�֧�ֱ���֪ͨ  
		NSString *body = [params objectForKey:@"body"];
		NSString *action = [params objectForKey:@"action"];
		int delay = [[params objectForKey:@"delay"] intValue];
	
        NSDate *now = [NSDate new];
        //        notification.fireDate=[NSDate dateWithTimeIntervalSinceNow:kCFCalendarUnitDay];//���ο�������ִ�е�����  
        notification.fireDate = [now dateByAddingTimeInterval:delay];//���ο�������ִ�е�����  
        //notification.repeatInterval = kCFCalendarUnitMinute;//ѭ��֪ͨ������  
        notification.timeZone = [NSTimeZone defaultTimeZone];  
        notification.alertBody = body;//��������ʾ��Ϣ  
		notification.alertAction = action;  //��������ʾ��ť  
        notification.applicationIconBadgeNumber=1; //Ӧ�ó�������Ͻ�С����  
        notification.soundName = UILocalNotificationDefaultSoundName;//���ػ�֪ͨ������  
		notification.userInfo = [NSDictionary dictionaryWithDictionary:params];
        [[UIApplication sharedApplication] scheduleLocalNotification:notification];
		
		[notification release];
    }   
}

void CCLocalNotify::cancelNotify(NSDictionary* params)
{
	NSString *key = [params objectForKey:@"key"];
	if( !key )
		return;
	
	UIApplication *app = [UIApplication sharedApplication];
    //��ȡ������������
    NSArray *localArr = [app scheduledLocalNotifications];
    
    //��������֪ͨ����
    UILocalNotification *localNoti = nil;
    
    if (localArr) {
        for (UILocalNotification *noti in localArr) {
            NSDictionary *dict = noti.userInfo;
            if (dict) {
                NSString *inKey = [dict objectForKey:@"key"];
                if ([inKey isEqualToString:key]) {
                    if (localNoti){
                        [localNoti release];
                        localNoti = nil;
                    }
                    localNoti = [noti retain];
                    break;
                }
            }
        }
        
        if (localNoti ) {
            //������ ȡ������
            [app cancelLocalNotification:localNoti];
            [localNoti release];
            return;
        }
	}
}

void CCLocalNotify::cancelAllNotify()
{
    UIApplication *app = [UIApplication sharedApplication];
    [app cancelAllLocalNotifications];
}

NS_CC_END
