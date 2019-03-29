//
//  ViewController.m
//  MKJDemoPay
//
//  Created by 宓珂璟 on 2019/3/29.
//  Copyright © 2019年 宓珂璟. All rights reserved.
//

#import "ViewController.h"
#import "MKJPay/MKJPay.h"
#import <Masonry/Masonry.h>

@interface ViewController ()

@property (nonatomic, strong) UIButton *clickButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview:self.clickButton];
    [self.clickButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.size.mas_equalTo(CGSizeMake(200, 50));
    }];
    
}

- (UIButton *)clickButton{
    if (!_clickButton) {
        _clickButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_clickButton setTitle:@"拉起SDK" forState:UIControlStateNormal];
        [_clickButton setBackgroundColor:[UIColor redColor]];
        [_clickButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_clickButton addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _clickButton;
}


- (void)click:(UIButton *)button{
    [MKJPay openSDKFromController:self];
}


@end
