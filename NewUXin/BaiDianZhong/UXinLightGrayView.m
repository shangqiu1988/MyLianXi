//
//  UXinLightGrayView.m
//  NewUXin
//
//  Created by tanpeng on 2018/7/5.
//  Copyright © 2018年 Study. All rights reserved.
//

#import "UXinLightGrayView.h"

@implementation UXinLightGrayView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    if(self.alpha<1.0f || !self.userInteractionEnabled ||self.hidden){
        return nil;
    }
    
    if([self pointInside:point withEvent:event]){
         NSArray *subViews = [self.subviews reverseObjectEnumerator].allObjects;
        for (UIView *view in subViews) {
           
        }
    }
    return nil;
    
}
-(BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event
{
    
    
    UIView *subView =self.subviews[0];
    CGPoint converedPoint = [self convertPoint:point toView:subView];
    if([subView pointInside:converedPoint withEvent:event]){
        return YES;
    }
    return YES;
}

-(void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
}
-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
}
-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
}
@end
