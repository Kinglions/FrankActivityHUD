//
//  ViewController.m
//  FrankActivityHUDDemo
//
//  Created by Frank on 2017/6/9.
//  Copyright © 2017年 Frank. All rights reserved.
//

#import "ViewController.h"
#import "FrankActivityHUD.h"

@interface ViewController ()

@property (nonatomic,strong)FrankActivityHUD * hud;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.hud = [[FrankActivityHUD alloc] init];
    
    
}
/**
 调用类方法
 
 @param sender 按钮
 */
- (IBAction)btnClickMethod:(UIButton *)sender {
    
    /**
     
     FrankActivityHUDShowIndicatorType_ScalingDots,
     FrankActivityHUDShowIndicatorType_LeadingDots,
     FrankActivityHUDShowIndicatorType_MinorArc,
     FrankActivityHUDShowIndicatorType_DynamicArc,
     FrankActivityHUDShowIndicatorType_ArcInCircle,
     FrankActivityHUDShowIndicatorType_SpringBall,
     FrankActivityHUDShowIndicatorType_ScalingBars,
     FrankActivityHUDShowIndicatorType_TriangleCircle,
     FrankActivityHUDShowIndicatorType_ImageBounce,// 图片弹跳动画，用户可以进行配置图片资源
     
     */
    // 展示枚举样式
//    [FrankActivityHUD showWithType:FrankActivityHUDShowIndicatorType_DynamicArc];
//    
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        
//        [FrankActivityHUD dismiss];
//        
//    });
    
    // 展示文字
    [FrankActivityHUD showWithText:@"类方法提示" shimmering:YES];
    
    
}

- (IBAction)objcBtnClick:(UIButton *)sender {
    
    // 可以设置对象的一些属性样式
//    self.hud.indicatorColor = [UIColor purpleColor];
//    self.hud.hudBackgroundColor = [UIColor greenColor];
//    self.hud.appearAnimationType = FrankActivityHUDAppearAnimationType_ZoomIn;
//
//    self.hud.overlayType = FrankActivityHUDOverlayType_Shadow;
//    [self.hud showWithType:FrankActivityHUDShowIndicatorType_DynamicArc];
//
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//
//        [self.hud dismiss];
//
//    });
    
    [self.hud showWithText:@"对象方法提示" shimmering:YES];
//    [PopTipView showInView:nil wihtTipText:@"这是 PopTipVIew 提示"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
