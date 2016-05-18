//
//  YZPopAnimation.m
//  彩票
//
//  Created by yz on 15/6/25.
//  Copyright (c) 2015年 yz. All rights reserved.
//

#import "YZPopAnimation.h"

@interface YZPopAnimation ()

@end

@implementation YZPopAnimation

// UIViewControllerContextTransitioning,转场动画上下文对象，系统创建的。
// 转场动画上下文对象作用:保存整个转场动画的信息，通过他告诉系统动画执行到哪一步，如何执行动画的，主要通过他获取转场的来源和目的控制器，和存储转场控制器的view
// [transitionContext containerView]：导航控制器存放子控制器的view

- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext
{
    return 0.25;
}


- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext
{
    
    
    // 获取来源控制器
    UIViewController *sourceVc = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    
    // 获取目的控制器
    UIViewController *destVc = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    
    // 获取存放子控制器的view
    UIView *contentView = [transitionContext containerView];
    
    // 把目的控制器插入到下面
    [contentView insertSubview:destVc.view belowSubview:sourceVc.view];
    
    NSLog(@"%@--%@",sourceVc,destVc);
    
    [UIView animateWithDuration:0.25 animations:^{
    
        // 来源控制器往右边移动
        sourceVc.view.transform = CGAffineTransformMakeTranslation([UIScreen mainScreen].bounds.size.width, 0);
        
    } completion:^(BOOL finished) {
    
        // 通知系统，转场动画完成，系统会自动把来源控制器的view移除父控件,必须调用，否则系统不知道转场动画完成，一直认为在转场中。
        //
        // 注意:如果动画取消，就不需要动画完成
        [transitionContext completeTransition:!transitionContext.transitionWasCancelled];
        
    }];

//    CATransition *anim = [CATransition animation];
//    
//    anim.startProgress = 0.3;
//    // suckEffect rippleEffect
//    anim.type = @"cube";
//    
//    anim.duration = 0.25;
//    
//    [contentView.layer addAnimation:anim forKey:nil];
    
}

- (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag
{
    
}



@end
