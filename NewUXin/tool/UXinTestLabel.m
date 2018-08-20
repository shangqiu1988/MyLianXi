//
//  UXinTestLabel.m
//  NewUXin
//
//  Created by tanpeng on 2018/6/12.
//  Copyright © 2018年 Study. All rights reserved.
//

#import "UXinTestLabel.h"
#import <CoreText/CoreText.h>
#define ImageWidthPro @"ImageWidthPro"
#define ImageHeightPro @"ImageHeightPro"
static CGFloat ctRunDelegateGetWithCallback(void *refCon)
{
    return 100;
}
@implementation UXinTestLabel
{
    NSInteger ImageSpaceIndex;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(void)drawRect:(CGRect)rect
{
    
    NSMutableAttributedString *attriStr = [[NSMutableAttributedString alloc] initWithString:self.text attributes:nil];
    ImageSpaceIndex = self.text.length;
    [attriStr addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:16] range:NSMakeRange(0, self.text.length)];
    [attriStr addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(5, 5)];
    CTFramesetterRef frameSetterRef = CTFramesetterCreateWithAttributedString((__bridge CFAttributedStringRef)attriStr);
    CGPathRef path = CGPathCreateWithRect(CGRectMake(0, 0, self.frame.size.width, self.frame.size.height),&CGAffineTransformIdentity) ;
    CTFrameRef textRef = CTFramesetterCreateFrame(frameSetterRef, CFRangeMake(0, 0), path, nil);
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    
    
    CGContextSetTextMatrix(contextRef, CGAffineTransformIdentity);
    CGContextTranslateCTM(contextRef, 0, self.frame.size.height);
    CGContextScaleCTM(contextRef, 1, -1);
    
   
    CTFrameDraw(textRef, contextRef);
    
    NSArray *lineAry = (__bridge NSArray *)CTFrameGetLines(textRef);
    
    for(NSInteger i = 0 ; i < lineAry.count ; i ++)
    {
        CTLineRef lineRef = (__bridge CTLineRef)lineAry[i];
        
        NSArray *runAry = (__bridge NSArray *)CTLineGetGlyphRuns(lineRef);
        for(NSInteger j = 0 ; j < runAry.count ; j++)
        {
            
            CTRunRef runRef = (__bridge CTRunRef)runAry[j];
            
            CFRange runRange = CTRunGetStringRange(runRef);
            
        }
        
    }
}

- (NSMutableAttributedString *)sepImageWith:(CGFloat)width height:(CGFloat)height
{
    CTRunDelegateCallbacks callback;
    memset(&callback, 0, sizeof(CTRunDelegateCallbacks));
    
    callback.getWidth = ctRunDelegateGetWithCallback;
    callback.getAscent = nil;
    callback.getDescent = nil;
    callback.version = kCTRunDelegateCurrentVersion;
    
    NSMutableAttributedString *attriStr = [[NSMutableAttributedString alloc] initWithString:@" "];
    
    NSMutableDictionary *argDict = [NSMutableDictionary dictionary];
    [argDict setValue:@(width) forKey:ImageWidthPro];
    [argDict setValue:@(height) forKey:ImageHeightPro];
    
    CTRunDelegateRef runDelegate = CTRunDelegateCreate(&callback, (__bridge void *)argDict);
    
    CFAttributedStringSetAttribute((CFMutableAttributedStringRef)attriStr, CFRangeMake(0, 1), kCTRunDelegateAttributeName, runDelegate);
    
    
}
@end
