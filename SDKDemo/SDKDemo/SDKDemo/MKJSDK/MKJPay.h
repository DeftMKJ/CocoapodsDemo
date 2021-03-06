//
//  MKJPay.h
//  SDKDemo
//
//  Created by 宓珂璟 on 2019/3/25.
//  Copyright © 2019年 宓珂璟. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MKJPay : NSObject

+ (void)registerWXApp:(NSString *)appKey;

+ (void)openSDKFromController:(UIViewController *)viewController;

+ (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url;

+ (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation;

@end

NS_ASSUME_NONNULL_END
