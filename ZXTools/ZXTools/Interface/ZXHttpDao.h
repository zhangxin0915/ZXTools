//
//  Dao.h
//  ZXTools
//
//  Created by macmini on 15/12/15.
//  Copyright © 2015年 tarogo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Para.h"
#import "LoginPara.h"

@interface ZXHttpDao : NSObject

+ (void)get:(NSString *)url params:(NSDictionary *)params success:(void (^)(id data))success failure:(void (^)(NSError *error))failure;
+ (void)post:(NSString *)url params:(NSDictionary *)params success:(void (^)(id data))success failure:(void (^)(NSError *error))failure;

//登录接口
+ (void)loginWithUrl:(NSString *)url loginPara:(LoginPara *)loginPara success:(void (^)(id data))success failure:(void (^)(NSError *error))failure;


@end
