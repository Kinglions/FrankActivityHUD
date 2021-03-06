# FrankActivityHUD

该框架中，主要提供了 FrankActivityHUD 和 PopTipView 两个类供外界调用，其中 “ FrankActivityHUD ”主要是提供了一些样式丰富的 HUD 展示功能调用；而 “ PopTipView ”主要是提供了文字提示展示功能。详情可以查看Demo，以后你的 HUD 样式不在单调：

##FrankActivityHUD  文件中

/**
 指示器展示的样式
 */
 
typedef NS_ENUM(NSInteger,FrankActivityHUDShowIndicatorType) 
{
    
    FrankActivityHUDShowIndicatorType_ScalingDots,
    FrankActivityHUDShowIndicatorType_LeadingDots,
    FrankActivityHUDShowIndicatorType_MinorArc,
    FrankActivityHUDShowIndicatorType_DynamicArc,
    FrankActivityHUDShowIndicatorType_ArcInCircle,
    FrankActivityHUDShowIndicatorType_SpringBall,
    FrankActivityHUDShowIndicatorType_ScalingBars,
    FrankActivityHUDShowIndicatorType_TriangleCircle,
    FrankActivityHUDShowIndicatorType_ImageBounce,// 图片弹跳动画，用户可以进行配置图片资源

};

/**
 指示器出现方式

 - FrankActivityHUDAppearAnimationTypeZoomIn: 中心放大弹出
 - FrankActivityHUDAppearAnimationTypeFadeIn: 中心淡入
 - FrankActivityHUDAppearAnimationTypeSlideFromTop: 从顶部进入
 - FrankActivityHUDAppearAnimationTypeSlideFromBottom: 从底部进入
 - FrankActivityHUDAppearAnimationTypeSlideFromLeft: 从左侧进入
 - FrankActivityHUDAppearAnimationTypeSlideFromRight: 从右侧进入
 */
 
typedef NS_ENUM(NSInteger,FrankActivityHUDAppearAnimationType) {
    
    FrankActivityHUDAppearAnimationType_ZoomIn = 0,
    FrankActivityHUDAppearAnimationType_FadeIn,
    FrankActivityHUDAppearAnimationType_SlideFromTop,
    FrankActivityHUDAppearAnimationType_SlideFromBottom,
    FrankActivityHUDAppearAnimationType_SlideFromLeft,
    FrankActivityHUDAppearAnimationType_SlideFromRight,
};

/**
 指示器消失方式

 - FrankActivityHUDDisappearAnimationTypeZoomOut: 中心弹性放大
 - FrankActivityHUDDisappearAnimationTypeFadeOut: 中心淡出
 - FrankActivityHUDDisappearAnimationTypeSlideFromTop: 从顶部滑出
 - FrankActivityHUDDisappearAnimationTypeSlideFromBottom: 从底部滑出
 - FrankActivityHUDDisappearAnimationTypeSlideFromLeft: 从左侧滑出
 - FrankActivityHUDDisappearAnimationTypeSlideFromRight: 从右侧滑出
 */
 
typedef NS_ENUM(NSInteger,FrankActivityHUDDisappearAnimationType) {
    
    FrankActivityHUDDisappearAnimationType_ZoomOut = 0,
    FrankActivityHUDDisappearAnimationType_FadeOut,
    FrankActivityHUDDisappearAnimationType_SlideFromTop,
    FrankActivityHUDDisappearAnimationType_SlideFromBottom,
    FrankActivityHUDDisappearAnimationType_SlideFromLeft,
    FrankActivityHUDDisappearAnimationType_SlideFromRight,
};

/**
 遮照层样式

 - FrankActivityHUDOverlayTypeNone: 没有遮罩层，默认状态
 - FrankActivityHUDOverlayTypeBlur: 高斯遮照层
 - FrankActivityHUDOverlayTypeTransparent: 透明灰度遮照层
 - FrankActivityHUDOverlayTypeShadow: 阴影遮罩层
 */

typedef NS_ENUM(NSInteger,FrankActivityHUDOverlayType) {

    FrankActivityHUDOverlayType_None = 0,
    FrankActivityHUDOverlayType_Blur,
    FrankActivityHUDOverlayType_Transparent,
    FrankActivityHUDOverlayType_Shadow,
};


@interface FrankActivityHUD : UIView

/**
 设置 hud 背景色，默认为 blackColor ,对FrankActivityHUDShowIndicatorType_ImageBounce 无效
 */
@property (nonatomic,strong) UIColor * hudBackgroundColor;

/**
 指示器颜色，默认为 whiteColor ,对FrankActivityHUDShowIndicatorType_ImageBounce 无效
 */
 
@property (nonatomic,strong) UIColor *indicatorColor;

/**
 指示器出现方式
 */
 
@property (nonatomic,assign)FrankActivityHUDAppearAnimationType appearAnimationType;

/**
 指示器消失方式
 */
 
@property (nonatomic,assign)FrankActivityHUDDisappearAnimationType disAppearAnimationType;

/**
 遮照层样式
 */
 
@property FrankActivityHUDOverlayType overlayType;

/**
 图片弹跳样式的资源数组，供用户进行自定义
 */
 
@property (nonatomic,strong)NSArray * imgBounceArr;


/**
 设置展示 HUD 样式
 */
 
-(void)showWithType:(FrankActivityHUDShowIndicatorType)type;

/**
 设置展示 HUD 样式，是否显示加载中文字
 */
 
-(void)showWithType:(FrankActivityHUDShowIndicatorType)type isShowLodingTitle:(BOOL)isShow;

/**
 *  展示默认样式：FrankActivityHUDShowIndicatorType_ScalingDots
 */
 
-(void)show;

/**
 *  展示提示文字，是否需要闪动效果 自动停留两秒钟
 */
 
-(void)showWithText:(NSString *)text shimmering:(BOOL)shimmering;

/**
 *  显示进度
 */
 
-(void)showWithProgress;

/**
 消失前展示的文字内容

 @param text 文字
 @param delay 停留时间
 @param success 显示成功或者失败
 */
 
-(void)dismissWithText:(NSString *)text delay:(CGFloat)delay success:(BOOL)success;

/**
 *  消失移除
 */
 
-(void)dismiss;

/**
 更新进度
 */
 
-(void)setProgress:(CGFloat)progress;
#pragma mark ------- 类方法 -----

/**
 设置展示 HUD 样式
 */
 
+(void)showWithType:(FrankActivityHUDShowIndicatorType)type;

/**
 设置展示 HUD 样式，是否显示加载中文字
 */
 
+(void)showWithType:(FrankActivityHUDShowIndicatorType)type isShowLodingTitle:(BOOL)isShow;

/**
 *  展示默认样式：FrankActivityHUDShowIndicatorType_ScalingDots
 */
 
+(void)show;

/**
 *  展示提示文字，是否需要闪动效果 自动停留两秒钟
 */
 
+(void)showWithText:(NSString *)text shimmering:(BOOL)shimmering;

/**
 *  显示进度
 */
 
+(void)showWithProgress;
/**
 更新进度
 */
 
+(void)setProgress:(CGFloat)progress;

/**
 消失前展示的文字内容
 
 @param text 文字
 @param delay 停留时间
 @param success 显示成功或者失败
 */
 
+(void)dismissWithText:(NSString *)text delay:(CGFloat)delay success:(BOOL)success;

/**
 *  消失移除
 */
 
+(void)dismiss;

##PopTipView.h  文件中

@interface PopTipView : UIView

@property (nonatomic,strong) NSString *tipText;

/**
 展示提示文字，默认停留两秒钟

 @param superView 父视图
 @param tipStr 内容
 */
 
+(instancetype)showInView:(UIView *)superView wihtTipText:(NSString *)tipStr;

/**
 展示网络错误提示，默认停留两秒钟

 @param superView 父视图
 @param tipStr 提示内容
 */
 
+(instancetype)showInView:(UIView *)superView wihtNetWorkErrorTipText:(NSString *)tipStr;
+(instancetype)showInView:(UIView *)superView wihtNetWorkExceptionTipText:(NSString *)tipStr;

/**
 提示内容，自定义大小及停留时间

 @param superView 父视图
 @param tipStr 提示内容
 @param bounds 大小
 @param size 字号大小
 @param interval 停留时间
 */
 
+(instancetype)showInView:(UIView *)superView wihtTipText:(NSString *)tipStr bounds:(CGSize)bounds fontSize:(CGFloat)size withTimeInterval:(float)interval;

/**
 修改文字字号
 */
 
-(void)setTipLabelFontSize:(CGFloat)size;

/**
 *  设置提示信息框
 *
 *  @param superView 显示在的view
 *  @param tipStr    内容
 *  @param interval  显示时间
 */
 
+(instancetype)showInView:(UIView *)superView wihtTipText:(NSString *)tipStr withTimeInterval:(float)interval;
