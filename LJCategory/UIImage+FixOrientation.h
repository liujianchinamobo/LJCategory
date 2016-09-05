//
//  UIImage+FixOrientation.h
//  moxueyuan
//
//  Created by 张健 on 15/9/1.
//  Copyright (c) 2015年 345. All rights reserved.
//

#import <UIKit/UIKit.h>

/**解决上传图片时有时会旋转90度的问题*/

@interface UIImage (FixOrientation)
- (UIImage *)fixOrientation:(UIImage *)aImage;
@end
