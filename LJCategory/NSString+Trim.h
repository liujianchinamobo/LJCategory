//
//  NSString+Trim.h
//  iSpa
//
//  Created by LJC on 15/6/26.
//  Copyright (c) 2015年 Chinamobo. All rights reserved.
//
// 去掉前后空格

#import <Foundation/Foundation.h>

@interface NSString (Trim)
+ (NSString *)trim:(NSString *)val trimCharacterSet:(NSCharacterSet *)characterSet;
+ (NSString *)trimWhitespace:(NSString *)val;
+ (NSString *)trimNewline:(NSString *)val;
+ (NSString *)trimWhitespaceAndNewline:(NSString *)val;
-(NSString *)trimWhitespace;
//+ (NSString *)disable_emoji:(NSString *)text;
+ (NSString *)disable_emoji:(NSString *)string;
@end
