//
//  UIImage+Resize.m
//  soho
//
//  Created by liujian on 15/4/28.
//  Copyright (c) 2015年 Chinamobo. All rights reserved.
//

#import "UIImage+Resize.h"

@implementation UIImage (Resize)
-(UIImage*)scaleImageToSize:(CGSize)newSize
{
    // Create a graphics image context
    UIGraphicsBeginImageContext(newSize);
    
    // Tell the old image to draw in this new context, with the desired
    // new size
    [self drawInRect:CGRectMake(0,0,newSize.width,newSize.height)];
    
    // Get the new image from the context
    UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
    
    // End the context
    UIGraphicsEndImageContext();
    
    // Return the new image.
    return newImage;
}

/** 设置圆角图片 */
- (UIImage *)cutCircleImage {
    // 开始图像上下文
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0.0);
    // 获取上下文
    CGContextRef ctr = UIGraphicsGetCurrentContext();
    // 设置范围
    CGRect rect = CGRectMake(0, 0, self.size.width, self.size.height);
    // 画圆
    CGContextAddEllipseInRect(ctr, rect);
    // 裁剪
    CGContextClip(ctr);
    // 将图片画上去
    [self drawInRect:rect];
    // 从上下文上获取剪裁后的照片
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    // 关闭上下文
    UIGraphicsEndImageContext();
    
    return image;
}

@end
