//
//  NSString+Date.h
//  MXY
//
//  Created by liujian on 16/5/4.
//  Copyright © 2016年 Chinamobo. All rights reserved.
//

#import <Foundation/Foundation.h>

/**时间转换*/
@interface NSString (Date)
+(NSString *)stringWithTimeIntervalString:(NSString *)timeInterval;
+(NSString *)stringWithNoLineTimeIntervalString:(NSString *)timeInterval;
+(NSString *)stringWithTimeInterval:(NSString *)timeInterval format:(NSString *)format;

+(NSString *)hourMinSecondsWithInterval:(NSString *)timeInterval;

+(NSMutableAttributedString *)stringWithstring:(NSString *)string color:(UIColor *)stringColor userName:(NSString *)name color:(UIColor *)nameColor content:(NSString *)content color:(UIColor *)contentColor;

/**四舍五入*/
-(NSString *)decimalRoundupAndRounddown;
@end
