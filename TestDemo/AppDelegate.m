//
//  AppDelegate.m
//  TestDemo
//
//  Created by MacBook on 2021/2/25.
//

#import "AppDelegate.h"
#import "../Lionu-SDK/LionuSDK.h"
#import "ViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor blackColor];
    UIStoryboard * mainStoryBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ViewController * VC = [mainStoryBoard instantiateInitialViewController];
    self.window.rootViewController = VC;
    [self.window makeKeyAndVisible];
    
    //SDK初始化
    [[LionuDeviceInfoSDK shareInstance] initSDKWithHostUrl:@"https://testapi.digitalevers.com" APPID:@"50"];

    //配置SDK是否打印上报参数
    [LionuDeviceInfoSDK shareInstance].configModel.isLog = YES;
    
    //启动上报
    [[LionuDeviceInfoSDK shareInstance] startLaunchEvent];

    return YES;
}



@end
