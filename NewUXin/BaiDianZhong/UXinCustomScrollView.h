//
//  UXinCustomScrollView.h
//  NewUXin
//
//  Created by tanpeng on 2018/7/9.
//  Copyright © 2018年 Study. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UXinCustomScrollView : UIView<UIGestureRecognizerDelegate>
@property(nonatomic,strong) UIPanGestureRecognizer *panGesture;
@property(nonatomic,assign) CGSize contentSize;
@end
