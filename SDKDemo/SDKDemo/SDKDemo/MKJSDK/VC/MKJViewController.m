//
//  MKJViewController.m
//  SDKDemo
//
//  Created by 宓珂璟 on 2019/3/25.
//  Copyright © 2019年 宓珂璟. All rights reserved.
//

#import "MKJViewController.h"
#import <Masonry/Masonry.h>
#import "MKJSDKManager.h"


@interface MKJViewController ()

@property (nonatomic, strong) UIButton *payButton;
@property (nonatomic, strong) UIButton *closeButton;

@end

@implementation MKJViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.payButton];
    [self.payButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.size.mas_equalTo(CGSizeMake(150, 50));
    }];
    
    [self.view addSubview:self.closeButton];
    [self.closeButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.payButton);
        make.top.equalTo(self.payButton.mas_bottom).with.offset(20);
        make.size.mas_equalTo(CGSizeMake(150, 50));
    }];
}

- (void)clickClose:(UIButton *)button{
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (UIButton *)closeButton{
    if (!_closeButton) {
        _closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_closeButton setBackgroundColor:[UIColor lightGrayColor]];
        [_closeButton setTitle:@"退出" forState:UIControlStateNormal];
        [_closeButton addTarget:self action:@selector(clickClose:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _closeButton;
}

- (UIButton *)payButton{
    if (!_payButton) {
        _payButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_payButton setBackgroundColor:[UIColor lightGrayColor]];
        [_payButton setTitle:@"支付一下" forState:UIControlStateNormal];
        [_payButton addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _payButton;
}

- (void)click:(UIButton *)button{
    NSString *result = [[MKJSDKManager shareManager] pay];
    if( ![@"" isEqual:result] ){
        UIAlertView *alter = [[UIAlertView alloc] initWithTitle:@"支付失败" message:result delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
        [alter show];
    }
    
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
