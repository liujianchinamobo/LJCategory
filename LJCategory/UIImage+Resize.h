//
//  UIImage+Resize.h
//  soho
//
//  Created by liujian on 15/4/28.
//  Copyright (c) 2015年 Chinamobo. All rights reserved.
//

#import <UIKit/UIKit.h>

/**压缩图片的方法*/

@interface UIImage (Resize)
-(UIImage*)scaleImageToSize:(CGSize)newSize;
@end
