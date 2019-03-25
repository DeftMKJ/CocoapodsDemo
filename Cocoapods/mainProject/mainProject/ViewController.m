//
//  ViewController.m
//  mainProject
//
//  Created by 宓珂璟 on 2019/3/25.
//  Copyright © 2019年 宓珂璟. All rights reserved.
//

#import "ViewController.h"
#import <FirstLibrary/FirstLibrary.h>
#import <SecondLibrary/SecondLibrary.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [[[FirstLibrary alloc] init] say];
    [[[SecondLibrary alloc] init] cry];
}


@end
