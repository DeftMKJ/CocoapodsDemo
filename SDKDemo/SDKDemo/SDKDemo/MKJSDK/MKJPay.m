//
//  MKJPay.m
//  SDKDemo
//
//  Created by 宓珂璟 on 2019/3/25.
//  Copyright © 2019年 宓珂璟. All rights reserved.
//

#import "MKJPay.h"
#import "MKJSDKManager.h"
#import "MKJViewController.h"

@implementation MKJPay

+ (void)registerWXApp:(NSString *)appKey{
    [[MKJSDKManager shareManager] registerWithKey:appKey];
}

+ (void)openSDKFromController:(UIViewController *)viewController{
    MKJViewController *vc = [[MKJViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    [viewController presentViewController:nav animated:YES completion:nil];
}

+ (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation{
    return [[MKJSDKManager shareManager] application:application openURL:url sourceApplication:sourceApplication annotation:annotation];
}

+ (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url{
    return [[MKJSDKManager shareManager] application:application handleOpenURL:url];
}

@end
