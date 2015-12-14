//
//  MBProgressHUD+Extend.m
//  BCMSystem
//
//  Created by ccg on 14-5-29.
//  Copyright (c) 2014年 mobisoft. All rights reserved.
//

#define kHideDelay 1.5

#import "MBProgressHUD+Extend.h"

@implementation MBProgressHUD (Extend)

#pragma mark - Custom MBProgressHUD

+ (MBProgressHUD *)showHUDMessage:(NSString *)message autoHide:(BOOL)autoHide {
    return [self showHUDMessage:message addedTo:[UIApplication sharedApplication].keyWindow autoHide:autoHide];
}

+ (MBProgressHUD *)showHUDMessage:(NSString *)message autoHide:(BOOL)autoHide textOnly:(BOOL)textOnly
{
    return [self showHUDMessage:message addedTo:[UIApplication sharedApplication].keyWindow autoHide:autoHide textOnly:textOnly];
}

+ (MBProgressHUD *)showHUDMessage:(NSString *)message addedTo:(UIView *)view autoHide:(BOOL)autoHide {
    return [self showHUDMessage:message addedTo:view autoHide:autoHide textOnly:YES];
}

+ (MBProgressHUD *)showHUDMessage:(NSString *)message addedTo:(UIView *)view autoHide:(BOOL)autoHide textOnly:(BOOL)textOnly
{
    
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:autoHide];
    hud.labelText = message;
    hud.removeFromSuperViewOnHide = YES;
    
    if (textOnly) {
        hud.mode = MBProgressHUDModeText;
    }
    
    if (autoHide) {
        [hud hide:YES afterDelay:kHideDelay];
    }
    
    return hud;
}

@end
