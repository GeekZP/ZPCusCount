//
//  CusSegment.m
//  ZPCusSegment


//  联系开发者 QQ     1397819210
//           Email  1397819210@qq.com


//  Created by 郑鹏 on 15/6/15.
//  Copyright (c) 2015年 pzheng. All rights reserved.
//

#import "CusSegment.h"

@interface CusSegment ()

@property (nonatomic,strong) UIButton *leftBtn;
@property (nonatomic,strong) UIButton *rightBtn;
@property (nonatomic,strong) UITextField *countTf;

@end

@implementation CusSegment

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self uiConfig];
    }
    return self;
}

- (void)uiConfig
{
    if (_segType == CusSegmentWithColor) {
        self.backgroundColor = [UIColor blackColor];
        self.layer.borderWidth = 0.5;
        self.layer.cornerRadius = 2;
        [self addSubview:self.leftBtn];
        [self addSubview:self.rightBtn];
        [self addSubview:self.countTf];
    }
    
    if ([_countTf.text isEqualToString:@"1"]) {
        _leftBtn.enabled = NO;
    }
}

- (void)setLeftRightWidth:(CGFloat)leftRightWidth
{
    _leftBtn.frame = CGRectMake(_leftBtn.frame.origin.x, _leftBtn.frame.origin.y, leftRightWidth, _leftBtn.frame.size.height);
}

- (void)setLineColor:(UIColor *)lineColor
{
    self.layer.borderColor = lineColor.CGColor;
    self.backgroundColor = lineColor;
}

- (void)setViewCornerRadius:(NSInteger)viewCornerRadius
{
    self.layer.cornerRadius = viewCornerRadius;
}

- (void)setIsSupport:(BOOL)isSupport
{
    _countTf.userInteractionEnabled = isSupport;
}

- (void)setTextCount:(NSString *)textCount
{
    _countTf.text = textCount;
    if (![_countTf.text isEqualToString:@"1"]) {
        _leftBtn.enabled = YES;
    }
    else
    {
        _leftBtn.enabled = NO;
        NSLog(@"不能再减少了");
    }
    
    if (![_countTf.text isEqualToString:_maxCount]) {
        _rightBtn.enabled = YES;
    }
    else
    {
        _rightBtn.enabled = NO;
        NSLog(@"达到最大值了");
    }
}

- (void)countChangeAction:(UIButton *)btn
{
    if (btn.tag == 10010) {
        _countTf.text = [NSString stringWithFormat:@"%ld",[_countTf.text integerValue]-1];
    }
    else
    {
        _countTf.text = [NSString stringWithFormat:@"%ld",[_countTf.text integerValue]+1];
    }
    if (![_countTf.text isEqualToString:@"1"]) {
        _leftBtn.enabled = YES;
    }
    else
    {
        _leftBtn.enabled = NO;
        NSLog(@"不能再减少了");
    }
    
    if (![_countTf.text isEqualToString:_maxCount]) {
        _rightBtn.enabled = YES;
    }
    else
    {
        _rightBtn.enabled = NO;
        NSLog(@"达到最大值了");
    }
    
    _countChange(_countTf.text);
}


- (UIButton *)leftBtn
{
    if (_leftBtn == nil) {
        _leftBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _leftBtn.frame = CGRectMake(0, 0, self.frame.size.height, self.frame.size.height);
        _leftBtn.backgroundColor = [UIColor whiteColor];
        [_leftBtn setImage:[UIImage imageNamed:@"reduce"] forState:UIControlStateNormal];
        _leftBtn.tag = 10010;
        [_leftBtn addTarget:self action:@selector(countChangeAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _leftBtn;
}

- (UIButton *)rightBtn
{
    if (_rightBtn == nil) {
        _rightBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _rightBtn.frame = CGRectMake(self.frame.size.width-CGRectGetWidth(_leftBtn.frame), 0, CGRectGetWidth(_leftBtn.frame), CGRectGetHeight(_leftBtn.frame));
        _rightBtn.backgroundColor = [UIColor whiteColor];
        [_rightBtn setImage:[UIImage imageNamed:@"plus"] forState:UIControlStateNormal];
        _rightBtn.tag = 10086;
        [_rightBtn addTarget:self action:@selector(countChangeAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _rightBtn;
}

- (UITextField *)countTf
{
    if (_countTf == nil) {
        _countTf = [[UITextField alloc] init];
        _countTf.backgroundColor = [UIColor whiteColor];
        _countTf.textAlignment = NSTextAlignmentCenter;
        _countTf.font = [UIFont systemFontOfSize:16];
        _countTf.text = @"1";
        _countTf.userInteractionEnabled = NO;
    }
    return _countTf;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    _rightBtn.frame = CGRectMake(self.frame.size.width-CGRectGetWidth(_leftBtn.frame), 0, CGRectGetWidth(_leftBtn.frame), CGRectGetHeight(_leftBtn.frame));
    _countTf.frame = CGRectMake(CGRectGetMaxX(_leftBtn.frame)+0.5, 0, self.frame.size.width - CGRectGetWidth(_leftBtn.frame)*2 - 1, CGRectGetHeight(_leftBtn.frame));
}

@end















