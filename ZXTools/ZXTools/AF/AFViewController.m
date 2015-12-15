//
//  AFViewController.m
//  ZXTools
//
//  Created by macmini on 15/12/15.
//  Copyright © 2015年 tarogo. All rights reserved.
//

#import "AFViewController.h"
#import "AFNetworking.h"
#import "Para.h"

@interface AFViewController ()

@end

@implementation AFViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}
- (void)request
{
    Para *para = [[Para alloc]init];
    [[AFHTTPSessionManager manager]GET:@"请求url" parameters:para progress:^(NSProgress * _Nonnull downloadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
    }];
 

    [[AFHTTPSessionManager manager]POST:@"请求url" parameters:para constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
      
  } progress:^(NSProgress * _Nonnull uploadProgress) {
      
  } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
      
  } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
      
  }];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
