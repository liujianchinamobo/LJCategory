//
//  NSObject+Liujian.h
//  bch
//
//  Created by mobo on 15/9/15.
//  Copyright (c) 2015年 Chinamobo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Liujian)
/**
 *  获取设备具体型号
 *
 *  @return 型号名称
 */
- (NSString *)getCurrentDeviceModel;

/**
 *  changeAppLanguage 方法
 */
-(void)addMethodAfterReceiveAppLanguageChanged;
@end
