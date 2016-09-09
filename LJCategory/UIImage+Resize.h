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

/**压缩图片都指定大小*/
-(UIImage*)scaleImageToSize:(CGSize)newSize;

/**设置圆角图片  比利用cornerRadius要高效且不卡顿*/
- (UIImage *)cutCircleImage;
@end
