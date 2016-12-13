//
//  ViewController.m
//  MySDKTests
//
//  Created by Walker on 2016/12/13.
//  Copyright © 2016年 Walker. All rights reserved.
//

#import "ViewController.h"
#import <MySDK/MySDKTest.h>
#import <MySDK/MySDKView.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [MySDKTest printTest];
    MySDKView *sdView = [[MySDKView alloc] initWithFrame:CGRectMake(0, 0, 76, 76)];
    sdView.center = self.view.center;
    [self.view addSubview:sdView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
