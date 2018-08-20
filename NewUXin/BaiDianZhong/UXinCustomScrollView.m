//
//  UXinCustomScrollView.m
//  NewUXin
//
//  Created by tanpeng on 2018/7/9.
//  Copyright © 2018年 Study. All rights reserved.
//

#import "UXinCustomScrollView.h"
#import "UXinConsumeGestureOne.h"
@implementation UXinCustomScrollView
-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if(self){
        
        _panGesture = [[UXinConsumeGestureOne alloc] initWithTarget:self action:@selector(panAction:)];
        _panGesture.delegate = self;
        [self addGestureRecognizer:_panGesture];
        
    }
    return self;
    
}
-(void)setContentSize:(CGSize)contentSize
{
    _contentSize = contentSize;
}
- ( void)panAction:(UIPanGestureRecognizer *)gesture
{
    CGRect tmpBounds = self.bounds;
    
    CGPoint point = [gesture translationInView:self];
    CGFloat minimunOffset = 0.f;
    CGFloat maxOffset = _contentSize.width - tmpBounds.size.width;
    
    CGFloat actualOffset = fmax(minimunOffset, fmin(maxOffset, tmpBounds.origin.x-point.x));
    
    tmpBounds.origin.x = actualOffset;
    
    [gesture setTranslation:CGPointZero inView:self];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
