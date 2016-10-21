//
//  UIButton+ShowBadge.m
//  MXY
//
//  Created by liujian on 16/7/7.
//  Copyright © 2016年 Chinamobo. All rights reserved.
//

#import "UIButton+ShowBadge.h"
#import <objc/runtime.h>
#import "UIView+RFAnimate.h"

static char * ShowBadgeButton = "ShowBadgeButton";

@implementation BadgeLabel
@end

@implementation UIButton (ShowBadge)

-(void)setBadge:(NSString *)badge
{
    objc_setAssociatedObject(self, &ShowBadgeButton, badge, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    
    [self addBadgeLabelToView:self];
 
}

-(NSString *)badge
{
    return objc_getAssociatedObject(self, &ShowBadgeButton);
}



-(void)addBadgeLabelToView:(UIView *)view
{

    for (UIView *sub in view.subviews) { // 移除自己的角标
        if ([sub isKindOfClass:[BadgeLabel class]]) {
            [sub removeFromSuperview];
        }
    }
    
    if ([self.badge isEqualToString:@"0"] || !self.badge || [self.badge integerValue] < 0) {
        return;
    }
    
    CGSize imageSize = self.bounds.size;
    UIEdgeInsets insets = UIEdgeInsetsZero;
    UIImage *image = self.currentImage;
    if (image) {
        insets = self.imageEdgeInsets;
        imageSize = image.size;
    }
    
    CGFloat badegWidth = 24;
    CGFloat badgeHeight = 12;
    CGFloat X = (self.width+imageSize.width)/2 + insets.left/2 - insets.right/2 - 3;
    CGFloat Y = (self.height - imageSize.height)/2 + insets.top/2 - insets.bottom/2 - badgeHeight/2;
    
    BadgeLabel *label = [[BadgeLabel alloc] initWithFrame:CGRectMake(X,Y,badegWidth,badgeHeight)];
    
    CGRect frame = label.frame;
    
    if (self.badge.integerValue < 10)
    {
        frame.size = CGSizeMake(15, badgeHeight);
    }else if (self.badge.integerValue < 100)
    {
        frame.size = CGSizeMake(18, badgeHeight);
    }else if (self.badge.integerValue < 1000)
    {
        frame.size = CGSizeMake(20, badgeHeight);
    }else if (self.badge.integerValue < 10000)
    {
        frame.size = CGSizeMake(22, badgeHeight);
    }else
    {
        self.badge = @"9999+";
        frame.size = CGSizeMake(24, badgeHeight);
    }
    label.frame = frame;
    label.text = self.badge;
    label.layer.cornerRadius = 6;
    label.backgroundColor = [UIColor redColor];
    label.textColor = [UIColor whiteColor];
    label.font = [UIFont systemFontOfSize:8];
    label.clipsToBounds = YES;
    label.textAlignment = NSTextAlignmentCenter;
    [view addSubview:label];
    
}
@end
