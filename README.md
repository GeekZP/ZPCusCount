# ZPCusCount


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



效果图

![image](https://github.com/GeekZP/ZPCusCount/blob/master/效果.jpeg)





