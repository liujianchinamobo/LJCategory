//
//  PanStaturBarScrollToTopTool.m
//  MXY
//
//  Created by liujian on 16/7/8.
//  Copyright © 2016年 Chinamobo. All rights reserved.
//

#import "PanStaturBarScrollToTopTool.h"
#import <UIKit/UIKit.h>

@implementation PanStaturBarScrollToTopTool

+ (void)scrollViewScrollToTop {
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    [self searchScrollViewInView:window];
}

+ (void)statusBarWindowClick {
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    [self searchScrollViewInView:window];
}

+ (BOOL)isShowingOnKeyWindow:(UIView *)view {
    UIWindow *keyWindow = [UIApplication sharedApplication].keyWindow;
    CGRect newFrame = [keyWindow convertRect:view.frame fromView:view.superview];
    CGRect winBounds = keyWindow.bounds;
    BOOL intersects = CGRectIntersectsRect(newFrame, winBounds);
    return !view.isHidden && view.alpha > 0.01 && view.window == keyWindow && intersects;
}

+ (void)searchScrollViewInView:(UIView *)supView {
    for (UIScrollView *subView in supView.subviews) {
        if ([subView isKindOfClass:[UIScrollView class]] && [self isShowingOnKeyWindow:supView]) {
            CGPoint offset = subView.contentOffset;
            offset.y = -subView.contentInset.top;
            [subView setContentOffset:offset animated:YES];
        }
        
        [self searchScrollViewInView:subView];
    }
}

@end
