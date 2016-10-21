//
//  UILabel+SuffixStringLabel.m
//  MXY
//
//  Created by liujian on 16/4/14.
//  Copyright © 2016年 Chinamobo. All rights reserved.
//

#import "UILabel+SuffixStringLabel.h"

@implementation UILabel (SuffixStringLabel)
-(void)setString:(NSString *)string prefixFont:(UIFont *)prefixfont sufString:(NSString *)sufstring suffixFont:(UIFont *)sufffont
{
    [self setString:string fontSize:0 sufString:sufstring fontSize:0 color:[UIColor whiteColor] prefixfont:prefixfont suffixFont:sufffont];
}



-(void)setString:(NSString *)string fontSize:(CGFloat)size sufString:(NSString *)sufstring fontSize:(CGFloat)sufsize
{
    [self setString:string fontSize:size sufString:sufstring fontSize:sufsize color:[UIColor whiteColor]];
}

-(void)setString:(NSString *)string sufString:(NSString *)sufstring
{
    [self setString:string fontSize:18 sufString:sufstring fontSize:12];
}

-(void)setString:(NSString *)string fontSize:(CGFloat)size sufString:(NSString *)sufstring fontSize:(CGFloat)sufsize color:(UIColor *)color
{
    [self setString:string fontSize:size sufString:sufstring fontSize:sufsize color:color prefixfont:nil suffixFont:nil];
}

-(void)setString:(NSString *)string fontSize:(CGFloat)size sufString:(NSString *)sufstring fontSize:(CGFloat)sufsize color:(UIColor *)color prefixfont:(UIFont *)pfont suffixFont:(UIFont *)suffFont
{
    NSString *totalstring = [string stringByAppendingString:sufstring];
    
    if (!totalstring) {
        return;
    }
    NSMutableAttributedString * attString = [[NSMutableAttributedString alloc] initWithString:totalstring];
    
    NSInteger prefixLeng = string.length;
    
    NSInteger suffLeng = sufstring.length;
    
    if (!pfont) {
        [attString addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:size]
 range:NSMakeRange(0, prefixLeng)];
        
        [attString addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:sufsize] range:NSMakeRange(prefixLeng, suffLeng)];

    }else
    {
        [attString addAttribute:NSFontAttributeName value:pfont range:NSMakeRange(0, prefixLeng)];
        
        [attString addAttribute:NSFontAttributeName value:suffFont range:NSMakeRange(prefixLeng, suffLeng)];

    }
    
    [attString addAttribute:NSForegroundColorAttributeName value:color range:NSMakeRange(0, totalstring.length)];
    
    self.attributedText = attString;
}




@end
