//
//  UIAlertView+Expand.h
//  ZXTools
//
//  Created by tarogo on 15-1-21.
//  Copyright (c) 2015年 tarogo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAlertView (Expand)

#pragma mark - Show Message

/**
 *  @brief  弹出对话框
 *
 *  @param  message 对话框显示的信息
 *
 *  @return
 */
+ (void)showMessage:(NSString *)message;

/**
 *  @brief  弹出对话框
 *
 *  @param  message 对话框显示的信息
 *  @param  title   标题信息
 *
 *  @return
 */
+ (void)showMessage:(NSString *)message title:(NSString *)title;
/**
 *  @brief  隐藏弹出框
 *
 *  @param
 *
 *  @return
 */
+ (void)dismissWithAnimated:(BOOL)animated;

@end
