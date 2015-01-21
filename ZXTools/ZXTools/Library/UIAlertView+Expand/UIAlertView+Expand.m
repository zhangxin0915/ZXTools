//
//  UIAlertView+Expand.m
//  ZXTools
//
//  Created by tarogo on 15-1-21.
//  Copyright (c) 2015年 tarogo. All rights reserved.
//

#import "UIAlertView+Expand.h"

@implementation UIAlertView (Expand)

static UIAlertView *_alertView;

#pragma mark - Show Message

+ (void)showMessage:(NSString *)message {
    [self showMessage:message title:@"提示"];
}

+ (void)showMessage:(NSString *)message title:(NSString *)title
{
    [self dismissWithAnimated:NO];
    if ([message rangeOfString:@"timed out"].length > 0) {
        message = @"请求超时，请重试或联系技术支持!";
    }
    
    _alertView = [[UIAlertView alloc] initWithTitle:title message:message delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil];
    [_alertView show];
}

+ (void)dismissWithAnimated:(BOOL)animated
{
    if (_alertView) {
        [_alertView dismissWithClickedButtonIndex:0 animated:animated];
    }
}

@end
