//
//  UILabel+SuffixStringLabel.h
//  MXY
//
//  Created by liujian on 16/4/14.
//  Copyright © 2016年 Chinamobo. All rights reserved.
//

#import <UIKit/UIKit.h>
/**
 *  适用于label中有两种不同字体的情况
 */
@interface UILabel (SuffixStringLabel)
/**
 *  分别设置前部分和后部分的内容和字体
 *
 *  @param string     前半部分内容
 *  @param prefixfont 前半部分字体
 *  @param sufstring  后半部分内容
 *  @param sufffont   后半部分字体
 */
-(void)setString:(NSString *)string prefixFont:(UIFont *)prefixfont sufString:(NSString *)sufstring suffixFont:(UIFont *)sufffont;


/**
 *  分别设置前部分和后部分的内容和字体
 *
 *  @param string    前部分的内容
 *  @param size      前部分字体大小
 *  @param sufstring 后部分的内容
 *  @param size      后部分的字体大小
 */
-(void)setString:(NSString *)string fontSize:(CGFloat)size sufString:(NSString *)sufstring fontSize:(CGFloat)sufsize;


/**
 *   分别设置前部分和后部分的内容和字体
 *
 *  @param string    前部分的内容,默认18号字体
 *  @param sufstring 后部分的内容，默认12号字体
 */
-(void)setString:(NSString *)string sufString:(NSString *)sufstring;

/**
 *  分别设置前部分和后部分的内容和字体
 *
 *  @param string    前部分的内容
 *  @param size      前部分字体
 *  @param sufstring 后部分的内容
 *  @param sufsize   后部分的字体
 *  @param color     字体颜色
 */
-(void)setString:(NSString *)string fontSize:(CGFloat)size sufString:(NSString *)sufstring fontSize:(CGFloat)sufsize color:(UIColor *)color;
@end
