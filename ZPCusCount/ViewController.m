//
//  ViewController.m
//  ZPCusCount
//
//  Created by 郑鹏 on 15/6/18.
//  Copyright (c) 2015年 pzheng. All rights reserved.
//
#import "CusSegment.h"
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CusSegment *segView = [[CusSegment alloc] initWithFrame:CGRectMake(30, 100, 150, 35)];
    
//    segView.maxCount = @"30";
//    segView.textCount = @"10";
//    segView.lineColor = [UIColor redColor];
//    segView.leftRightWidth = 100;
//    segView.viewCornerRadius = 3;
//    segView.isSupport = YES;
    
    [segView setCountChange:^(NSString *countStr) {
        NSLog(@"%@",countStr);
    }];
    [self.view addSubview:segView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end











