//
//  KTKeyChainHelper.h
//  ZXTools
//
//  Created by tarogo on 15-1-20.
//  Copyright (c) 2015年 tarogo. All rights reserved.
//
//  一般用来保存账号和密码
//  需要导入 Security框架
#import <Foundation/Foundation.h>

@interface KTKeyChainHelper : NSObject

+ (void) saveValue:(NSString*)value
            forKey:(NSString*)key withGroup:(NSString*)group;
+ (void) deleteWithKey:(NSString*)key withGroup:(NSString*)group;
+ (NSString*) getValueWithKey:(NSString*)key withGroup:(NSString*)group;

@end
