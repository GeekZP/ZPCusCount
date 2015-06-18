//
//  CusSegment.h
//  ZPCusSegment


//  联系开发者 QQ     1397819210
//           Email  1397819210@qq.com


//  Created by 郑鹏 on 15/6/15.
//  Copyright (c) 2015年 pzheng. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    CusSegmentWithColor,
    CusSegmentWithImage
} CusSegmentType;  //后期扩展用,暂时预留

@interface CusSegment : UIView

@property (nonatomic,assign) CusSegmentType segType;

//textfeild 是否允许手动输入(默认NO)
@property (nonatomic,assign) BOOL isSupport;

//控件圆角
@property (nonatomic,assign) NSInteger viewCornerRadius;

//设置左右加减按钮的宽度(默认是等于整个控件的高度)
@property (nonatomic,assign) CGFloat leftRightWidth;

//设置边缘线的颜色(默认为黑色)
@property (nonatomic,strong) UIColor *lineColor;

//设置textfeild的值
@property (nonatomic,copy) NSString *textCount;

//设置textfeild的最大值
@property (nonatomic,copy) NSString *maxCount;

@property (nonatomic,copy) void(^countChange)(NSString *);

@end












