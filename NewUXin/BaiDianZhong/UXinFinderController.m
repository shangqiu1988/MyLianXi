//
//  UXinFinderController.m
//  NewUXin
//
//  Created by tanpeng on 2018/7/5.
//  Copyright © 2018年 Study. All rights reserved.
//

#import "UXinFinderController.h"
#import "UXinLightGrayView.h"
#import "UXinRedView.h"
#import "UXinYellowView.h"
#import "UXinUXinBlueView.h"
@interface UXinFinderController ()

@end

@implementation UXinFinderController

- (void)viewDidLoad {
    [super viewDidLoad];
    UXinLightGrayView *grayVIew = [[UXinLightGrayView alloc] initWithFrame:CGRectZero];
    UXinYellowView *yellow = [[UXinYellowView alloc] initWithFrame:CGRectZero];
    UXinRedView *redView = [[UXinRedView alloc] initWithFrame:CGRectZero];
    UXinUXinBlueView *blueView =[[UXinUXinBlueView alloc] initWithFrame:CGRectZero];
    [self.view addSubview:grayVIew];
    [grayVIew addSubview:redView];
    [grayVIew addSubview:blueView];
    [self.view addSubview:yellow];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
}
-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
}
-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
}
-(void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
