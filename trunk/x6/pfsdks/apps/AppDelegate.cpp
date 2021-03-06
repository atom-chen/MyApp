
#include "cocos2d.h"
#include "AppDelegate.h"
#include "SimpleAudioEngine.h"
#include "support/CCNotificationCenter.h"
#include "CCLuaEngine.h"
#include <string>

// lua extensions
#include "lua_extensions.h"
// cocos2dx_extra luabinding
#include "luabinding/cocos2dx_extra_luabinding.h"
#include "luabinding/cocos2dx_extra_ios_iap_luabinding.h"

// thrid_party
//#include "third_party_luabinding.h"

// CCBReader
//#include "Lua_extensions_CCB.h"

using namespace std;
using namespace cocos2d;
using namespace CocosDenshion;

AppDelegate::AppDelegate()
{
    // fixed me
    //_CrtSetDbgFlag(_CRTDBG_ALLOC_MEM_DF|_CRTDBG_LEAK_CHECK_DF);
}

AppDelegate::~AppDelegate()
{
    // end simple audio engine here, or it may crashed on win32
    SimpleAudioEngine::sharedEngine()->end();
}

bool AppDelegate::applicationDidFinishLaunching()
{
    // initialize director
    CCDirector *pDirector = CCDirector::sharedDirector();
    pDirector->setOpenGLView(CCEGLView::sharedOpenGLView());
    pDirector->setProjection(kCCDirectorProjection2D);

    // set FPS. the default value is 1.0/60 if you don't call this
    pDirector->setAnimationInterval(1.0 / 30);

    // register lua engine
    CCLuaEngine *pEngine = CCLuaEngine::defaultEngine();
    CCScriptEngineManager::sharedManager()->setScriptEngine(pEngine);

    CCLuaStack *pStack = pEngine->getLuaStack();
    lua_State* L = pStack->getLuaState();

    // load lua extensions
    luaopen_lua_extensions(L);
    // load cocos2dx_extra luabinding
    luaopen_cocos2dx_extra_luabinding(L);
    luaopen_cocos2dx_extra_ios_iap_luabinding(L);
    
    CCFileUtils* fileUtils = CCFileUtils::sharedFileUtils();
	fileUtils->setPopupNotify(false);
    
#if (CC_TARGET_PLATFORM != CC_PLATFORM_WIN32)
	// 只读包里面的脚本
	string path;
	string mainFile = "scripts/main.lua";
	string encodedMainFile = "release/"+fileUtils->encode(mainFile);
	string flagFile = "notread.txt";

#if (CC_TARGET_PLATFORM != CC_PLATFORM_ANDROID)
	mainFile = "assets/"+mainFile;
	encodedMainFile = "assets/"+encodedMainFile;
	flagFile = "assets/"+flagFile;
#endif

	// 判断读取加密，还是非加密版本
	if( !fileUtils->isFileExist(encodedMainFile) || fileUtils->isFileExist(flagFile) )
	{
		path = mainFile;
	}
	else
	{
		path = encodedMainFile;
	}

	path = fileUtils->fullPathForFilename(path.c_str());
#else
	string mainFile = "scripts/main.lua";
	string path = "release/"+fileUtils->encode(mainFile);
	if( !fileUtils->isFileExist(path) )
	{
		path = mainFile;
	}

	path = fileUtils->fullPathForFilename(path.c_str());
#endif

	int pos;
    while ((pos = path.find_first_of("\\")) != std::string::npos)
    {
        path.replace(pos, 1, "/");
    }
    /*
	size_t p = path.find_last_of("/\\");
    if (p != path.npos)
    {
        const string dir = path.substr(0, p);
        pStack->addSearchPath(dir.c_str());
        
        p = dir.find_last_of("/\\");
        if (p != dir.npos)
        {
            pStack->addSearchPath(dir.substr(0, p).c_str());
        }
    }
	*/
    
    string env = "__LUA_STARTUP_FILE__=\"";
    env.append(path);
    env.append("\"");
    pEngine->executeString(env.c_str());
    
    CCLOG("------------------------------------------------");
    CCLOG("LOAD LUA FILE: %s", path.c_str());
    CCLOG("------------------------------------------------");
	
	unsigned long size = 0;
	unsigned char* pData = 0;
	pData = fileUtils->getFileData(path.c_str(), "rb", &size);

	CCLuaStack::decodeLuaBytes((char*)pData, size);

	pStack->executeBuffer((const char*)pData, size, path.c_str());
	CC_SAFE_DELETE_ARRAY(pData);
    
    return true;
}

// This function will be called when the app is inactive. When comes a phone call,it's be invoked too
void AppDelegate::applicationDidEnterBackground()
{
    CCDirector::sharedDirector()->stopAnimation();
    CCDirector::sharedDirector()->pause();
    SimpleAudioEngine::sharedEngine()->pauseBackgroundMusic();
    SimpleAudioEngine::sharedEngine()->pauseAllEffects();
    CCNotificationCenter::sharedNotificationCenter()->postNotification("APP_ENTER_BACKGROUND");
}

// this function will be called when the app is active again
void AppDelegate::applicationWillEnterForeground()
{
    CCDirector::sharedDirector()->startAnimation();
    CCDirector::sharedDirector()->resume();
    SimpleAudioEngine::sharedEngine()->resumeBackgroundMusic();
    SimpleAudioEngine::sharedEngine()->resumeAllEffects();
    CCNotificationCenter::sharedNotificationCenter()->postNotification("APP_ENTER_FOREGROUND");
}
