//
//  DemoViewController.m
//  SDKDemo
//
//  Created by 宓珂璟 on 2019/3/25.
//  Copyright © 2019年 宓珂璟. All rights reserved.
//

#import "DemoViewController.h"
#import "MKJPay.h"

@interface DemoViewController ()

@end

@implementation DemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)clickButton:(UIButton *)sender {
    [MKJPay openSDKFromController:self];
}
    
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
