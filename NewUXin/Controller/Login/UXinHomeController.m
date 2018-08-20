//
//  UXinHomeController.m
//  NewUXin
//
//  Created by tanpeng on 2018/6/14.
//  Copyright © 2018年 Study. All rights reserved.
//

#import "UXinHomeController.h"
#import <AFNetworking/AFNetworking.h>
@interface UXinHomeController ()<NSURLSessionDelegate,NSURLSessionDataDelegate>

@end

@implementation UXinHomeController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)blockNet
{
    
    NSString *urlStr = @"";
    NSURLSession *sesion = [NSURLSession sharedSession];
    
    NSURLSessionTask *task = [sesion dataTaskWithURL:[NSURL URLWithString:urlStr] completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        NSDictionary *infoDict = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
        
    }];
    [task resume];
}
-(void)delegateNet
{
    NSString *urlStr = @"";
    NSString *body=@"";
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:[NSURL URLWithString:urlStr]];
    [request setHTTPMethod:@"POST"];
    [request setHTTPBody:[body dataUsingEncoding:NSUTF8StringEncoding]];
    request.cachePolicy = NSURLRequestReloadIgnoringLocalCacheData;
    NSURLSession *sesion = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration] delegate:sesion delegateQueue:nil];;
    NSURLSessionTask *task = [sesion dataTaskWithRequest:request];
    [task resume];
}
- (void)URLSession:(NSURLSession *)session dataTask:(NSURLSessionDataTask *)dataTask
didReceiveResponse:(NSURLResponse *)response
 completionHandler:(void (^)(NSURLSessionResponseDisposition disposition))completionHandler;
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
