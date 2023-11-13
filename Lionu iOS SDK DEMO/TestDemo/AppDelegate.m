//
//  AppDelegate.m
//  TestDemo
//
//  Created by MacBook on 2021/2/25.
//

#import "AppDelegate.h"
#import "../Lionsu-SDK/LionsuSDK.h"
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
    [[LionsuDeviceInfoSDK shareInstance] initSDKWithHostUrl:@"http://121.89.204.35" APPID:@"666888"];
    //配置SDK是否打印上报参数
    [LionsuDeviceInfoSDK shareInstance].configModel.isLog = YES;
    
    //启动上报
    [[LionsuDeviceInfoSDK shareInstance] startLaunchEvent];

    return YES;
}



@end
