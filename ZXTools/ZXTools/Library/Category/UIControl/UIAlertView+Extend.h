//
//  UIAlertView+Extend.h
//  BCMSystem
//
//  Created by ccg on 14-4-17.
//  Copyright (c) 2014年 mobisoft. All rights reserved.
//  UIAlertView分类扩展方法

#import <UIKit/UIKit.h>

@interface UIAlertView (Extend)

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
