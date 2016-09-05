//
//  UIScrollView+AllowPanGestureEventPass.m
//  MXY
//
//  Created by liujian on 16/6/7.
//  Copyright © 2016年 Chinamobo. All rights reserved.
//

#import "UIScrollView+AllowPanGestureEventPass.h"

@implementation UIScrollView (AllowPanGestureEventPass)
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer
{
    if ([gestureRecognizer isKindOfClass:[UIPanGestureRecognizer class]]
        && [otherGestureRecognizer isKindOfClass:[UIScreenEdgePanGestureRecognizer class]])
    {
        // 继续往下传递
        return YES;
        
    }
    else
    {
        return  NO;
    }
}
@end
