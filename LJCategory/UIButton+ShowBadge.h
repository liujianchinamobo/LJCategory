//
//  UIButton+ShowBadge.h
//  MXY
//
//  Created by liujian on 16/7/7.
//  Copyright © 2016年 Chinamobo. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  用来给按钮右上角添加角标
 */

@interface UIButton (ShowBadge)
@property (strong,nonatomic) NSString * badge;
@end

@interface BadgeLabel : UILabel
@end