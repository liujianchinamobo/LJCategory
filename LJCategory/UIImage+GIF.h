//
//  UIImage+GIF.h
//  App
//
//  Created by mobo on 15/11/12.
//  Copyright © 2015年 Chinamobo. All rights reserved.
//

#import <UIKit/UIKit.h>

/**可以加载gif格式的图像*/


@interface UIImage (GIF)
+ (UIImage *)sd_animatedGIFNamed:(NSString *)name;

+ (UIImage *)sd_animatedGIFWithData:(NSData *)data;

- (UIImage *)sd_animatedImageByScalingAndCroppingToSize:(CGSize)size;
@end
