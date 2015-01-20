//
//  KTKeyChainHelper.m
//  ZXTools
//
//  Created by tarogo on 15-1-20.
//  Copyright (c) 2015年 tarogo. All rights reserved.
//

#import "KTKeyChainHelper.h"

@implementation KTKeyChainHelper

+ (NSMutableDictionary *)getKeyChainQuery:(NSString *)service withGroup:(NSString*)accessGroup {
    
    NSMutableDictionary *dic= [NSMutableDictionary dictionaryWithObjectsAndKeys:
                               (id)CFBridgingRelease(kSecClassGenericPassword),(id)CFBridgingRelease(kSecClass),
                               service, (id)CFBridgingRelease(kSecAttrService),
                               service, (id)CFBridgingRelease(kSecAttrAccount),
                               (id)CFBridgingRelease(kSecAttrAccessibleAfterFirstUnlock),(id)CFBridgingRelease(kSecAttrAccessible),
                               nil];
    if (accessGroup != nil)
    {
#if TARGET_IPHONE_SIMULATOR
#else
        [dic setObject:accessGroup forKey:(__bridge id)kSecAttrAccessGroup];
#endif
    }
    return dic;
}

+(void)saveValue:(NSString *)value forKey:(NSString *)key withGroup:(NSString *)group
{
    NSMutableDictionary *keychainQuery = [self getKeyChainQuery:key withGroup:group];
    SecItemDelete((__bridge CFDictionaryRef)keychainQuery);
    [keychainQuery setObject:[NSKeyedArchiver archivedDataWithRootObject:value] forKey:(__bridge id)kSecValueData];
    SecItemAdd((__bridge CFDictionaryRef)keychainQuery, NULL);
}

+(void)deleteWithKey:(NSString *)key withGroup:(NSString *)group
{
    NSMutableDictionary *keychainQuery = [self getKeyChainQuery:key withGroup:group];
    SecItemDelete((__bridge CFDictionaryRef)keychainQuery);
}

+(NSString *)getValueWithKey:(NSString *)key withGroup:(NSString *)group
{
    NSString* ret = nil;
    NSMutableDictionary *keychainQuery = [self getKeyChainQuery:key withGroup:group];
    [keychainQuery setObject:(id)kCFBooleanTrue forKey:(__bridge id)kSecReturnData];
    [keychainQuery setObject:(__bridge id)kSecMatchLimitOne forKey:(__bridge id)kSecMatchLimit];
    CFDataRef keyData = NULL;
    if (SecItemCopyMatching((__bridge CFDictionaryRef)keychainQuery, (CFTypeRef *)&keyData) == noErr)
    {
        @try
        {
            ret = [NSKeyedUnarchiver unarchiveObjectWithData:(__bridge NSData *)keyData];
        }
        @catch (NSException *e)
        {
            NSLog(@"Unarchive of %@ failed: %@", key, e);
        }
        @finally
        {
            
        }
    }
    if (keyData)
        CFRelease(keyData);
    return ret;
}

@end
