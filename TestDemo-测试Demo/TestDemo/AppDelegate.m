//
//  AppDelegate.m
//  TestDemo
//
//  Created by 火虎MacBook on 2021/2/25.
//

#import "AppDelegate.h"
#import "HDPDeviceInfoSDK.h"
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
    [[HDPDeviceInfoSDK shareInstance] initSDKWithHostUrl:@"http://121.89.204.35" APPID:@"HDP666888"];
    //配置SDK是否打印上报参数
    [HDPDeviceInfoSDK shareInstance].configModel.isLog = YES;
    
    //启动上报
    [[HDPDeviceInfoSDK shareInstance] startLaunchEvent];

    return YES;
}



@end
