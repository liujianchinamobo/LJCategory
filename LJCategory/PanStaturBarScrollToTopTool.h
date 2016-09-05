//
//  PanStaturBarScrollToTopTool.h
//  MXY
//
//  Created by liujian on 16/7/8.
//  Copyright © 2016年 Chinamobo. All rights reserved.
//

#import <Foundation/Foundation.h>

/**点击状态栏滚动到顶部，如果界面中不止一个scrollview，则不滚动
 在appdelegate中
 添加如下方法即可
 *判断点击的是不是状态栏，如果是则滚到到顶部*
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
    CGPoint location = [[[event allTouches] anyObject] locationInView:self.window];
    CGRect statusBarFrame = [UIApplication sharedApplication].statusBarFrame;
    if (CGRectContainsPoint(statusBarFrame, location)) {
        [self statusBarTouchedAction];
    }
}

- (void)statusBarTouchedAction {
    [PanStaturBarScrollToTopTool scrollViewScrollToTop];
}
 */

@interface PanStaturBarScrollToTopTool : NSObject
+ (void)scrollViewScrollToTop;

@end
