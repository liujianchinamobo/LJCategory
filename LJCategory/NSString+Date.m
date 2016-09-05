//
//  NSString+Date.m
//  MXY
//
//  Created by liujian on 16/5/4.
//  Copyright © 2016年 Chinamobo. All rights reserved.
//

#import "NSString+Date.h"

@implementation NSString (Date)
+(NSString *)stringWithTimeIntervalString:(NSString *)timeInterval
{
    NSTimeInterval time = [timeInterval doubleValue];
    return [NSString stringWithTimeInterval:time];
}

+(NSString *)stringWithTimeInterval:(NSTimeInterval)timeInterval
{
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:timeInterval];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"YYYY-MM-dd HH:mm"];
    return [formatter stringFromDate:date];
}

+(NSString *)stringWithNoLineTimeIntervalString:(NSString *)timeInterval
{
    NSTimeInterval time = [timeInterval doubleValue];
    return [NSString stringWithNoLineTimeInterval:time];
}

+(NSString *)stringWithNoLineTimeInterval:(NSTimeInterval)timeInterval
{
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:timeInterval];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"YYYYMMdd HH:mm"];
    return [formatter stringFromDate:date];
}

+(NSString *)stringWithTimeInterval:(NSString *)timeInterval format:(NSString *)format
{
    NSTimeInterval time = [timeInterval doubleValue];

    NSDate *date = [NSDate dateWithTimeIntervalSince1970:time];

    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:format];
    [formatter setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:3600*8]];
    return [formatter stringFromDate:date];
}


+(NSString *)hourMinSecondsWithInterval:(NSString *)timeInterval
{
   NSString *date = [self stringWithTimeInterval:timeInterval format:@"HH:mm:ss"];
    
    NSArray *array = [date componentsSeparatedByString:@":"];
    NSMutableString *mutString = [[NSMutableString alloc] init];
    
    NSInteger hour = [[array firstObject] integerValue];
    NSInteger min = [[array objectAtIndex:1] integerValue];
    NSInteger second = [[array objectAtIndex:2] integerValue];
    
    if (hour != 0) {
        [mutString appendFormat:@"%ld小时",(long)hour];
    }
    if (min != 0)
    {
        [mutString appendFormat:@"%ld分钟",(long)min];
    }
    if (second != 0)
    {
        [mutString appendFormat:@"%ld秒",(long)second];

    }
    
    return mutString;
}

/**回复XXX：XXXXX*/
+(NSMutableAttributedString *)stringWithstring:(NSString *)string color:(UIColor *)stringColor userName:(NSString *)name color:(UIColor *)nameColor content:(NSString *)content color:(UIColor *)contentColor
{
    NSString * allString = [NSString stringWithFormat:@"%@%@%@",string, name, content];
    NSRange range = [allString rangeOfString:name];
    NSMutableAttributedString * attribute = [[NSMutableAttributedString alloc] initWithString: allString];
    [attribute addAttributes: @{NSForegroundColorAttributeName: nameColor}range: range];
    [attribute addAttributes: @{NSForegroundColorAttributeName: stringColor}range: NSMakeRange(0, range.location)];
    [attribute addAttributes: @{NSForegroundColorAttributeName: contentColor}range: NSMakeRange(range.location + range.length, allString.length - range.location - range.length)];
    return attribute;
}


/**小数四舍五入*/
-(NSString *)decimalRoundupAndRounddown
{
    if ([self hasSuffix:@".5"]) {
        return self;
    }else
    {
      NSString *string = [self decimalwithFormat:@"0" floatV:[self floatValue]];
        return [string stringByAppendingString:@".0"];
    }
}

- (NSString *)decimalwithFormat:(NSString *)format floatV:(float)floatV
{
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    
    [numberFormatter setPositiveFormat:format];
    
    return  [numberFormatter stringFromNumber:[NSNumber numberWithFloat:floatV]];
}
@end
