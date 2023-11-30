//
//  ViewController.m
//  TestDemo
//
//  Created by MacBook on 2021/2/25.
//

#import "ViewController.h"
#import "../Lionu-SDK/LionuSDK.h"
#import "../AFNetworking/AFNetworking.h"
#import "../SVProgressHUD/SVProgressHUD.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *payTextField;
@end


@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.payTextField.keyboardType = UIKeyboardTypeNumberPad;
}

/**启动上报*/
- (IBAction)StartLaunchEvent:(id)sender {
    //启动上报
    [[LionuDeviceInfoSDK shareInstance] startLaunchEvent];
    
    [SVProgressHUD showSuccessWithStatus:@"启动上报完成"];
    [SVProgressHUD dismissWithDelay:1];

}

/**注册上报*/
- (IBAction)startRegisterEvent:(id)sender {
    //注册上报
    [[LionuDeviceInfoSDK shareInstance] startRegisterEvent];
    
    [SVProgressHUD showSuccessWithStatus:@"注册上报完成"];
    [SVProgressHUD dismissWithDelay:1];


}

/**付费上报*/
- (IBAction)startPayevent:(id)sender {
    //付费上报
    [[LionuDeviceInfoSDK shareInstance] startPayEventWithMoney:self.payTextField.text];
    
    [SVProgressHUD showSuccessWithStatus:@"付费上报完成"];
    [SVProgressHUD dismissWithDelay:1];

}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [super touchesBegan:touches withEvent:event];
    [self.payTextField endEditing:YES];
}

@end

