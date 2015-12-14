//
//  UIAlertView+Extend.m
//  BCMSystem
//
//  Created by ccg on 14-4-17.
//  Copyright (c) 2014年 mobisoft. All rights reserved.
//

#import "UIAlertView+Extend.h"

@implementation UIAlertView (Extend)

static UIAlertView *_alertView;

#pragma mark - Show Message

+ (void)showMessage:(NSString *)message {
    [self showMessage:message title:@"提示"];
}

+ (void)showMessage:(NSString *)message title:(NSString *)title
{
    [self dismissWithAnimated:NO];
    
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
