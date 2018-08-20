//
//  UXinConsumeGestureOne.m
//  NewUXin
//
//  Created by tanpeng on 2018/7/9.
//  Copyright © 2018年 Study. All rights reserved.
//

#import "UXinConsumeGestureOne.h"
#import <UIKit/UIGestureRecognizerSubclass.h>
@implementation UXinConsumeGestureOne
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"oneGesture touchBegan ");
    [super touchesBegan:touches withEvent:event];
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"oneGesture touchesMoved");
    [super touchesMoved:touches withEvent:event];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"oneGesture touchesEnded");
    [super touchesEnded:touches withEvent:event];
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"oneGesture touchesCancelled");
    [super touchesCancelled:touches withEvent:event];
}
@end
