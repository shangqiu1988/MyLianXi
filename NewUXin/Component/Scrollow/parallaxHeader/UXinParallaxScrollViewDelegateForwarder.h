//
//  UXinParallaxScrollViewDelegateForwarder.h
//  NewUXin
//
//  Created by tanpeng on 17/9/15.
//  Copyright © 2017年 Study. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UXinParallaxScrollView.h"
@interface UXinParallaxScrollViewDelegateForwarder : NSObject<ParallaxScrollViewDelegate>
@property(nonatomic,assign) id<ParallaxScrollViewDelegate> delegate;

@end
