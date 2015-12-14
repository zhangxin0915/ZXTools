//
//  MBProgressHUD+Extend.h
//  BCMSystem
//
//  Created by ccg on 14-5-29.
//  Copyright (c) 2014年 mobisoft. All rights reserved.
//  MBProgressHUD扩展分类

#import "MBProgressHUD.h"

@interface MBProgressHUD (Extend)

#pragma mark - Custom MBProgressHUD

/**
 *  @brief  显示文本(纯文本)
 *
 *  @param  message   需要显示的文本信息
 *  @param  autoHide  是否自动隐藏
 *
 *  @return MBProgressHUD
 */
+ (MBProgressHUD *)showHUDMessage:(NSString *)message autoHide:(BOOL)autoHide;

/**
 *  @brief  显示文本
 *
 *  @param  message   需要显示的文本信息
 *  @param  autoHide  是否自动隐藏
 *  @param  textOnly  是否只显示文本
 *
 *  @return MBProgressHUD
 */
+ (MBProgressHUD *)showHUDMessage:(NSString *)message autoHide:(BOOL)autoHide textOnly:(BOOL)textOnly;

/**
 *  @brief  显示文本到指定View(纯文本)
 *
 *  @param  message   需要显示的文本信息
 *  @param  view      被添加显示的View
 *  @param  autoHide  是否自动隐藏
 *
 *  @return MBProgressHUD
 */
+ (MBProgressHUD *)showHUDMessage:(NSString *)message addedTo:(UIView *)view autoHide:(BOOL)autoHide;

/**
 *  @brief  显示文本到指定View
 *
 *  @param  message   需要显示的文本信息
 *  @param  view      被添加显示的View
 *  @param  autoHide  是否自动隐藏
 *  @param  textOnly  是否只显示文本
 *
 *  @return MBProgressHUD
 */
+ (MBProgressHUD *)showHUDMessage:(NSString *)message addedTo:(UIView *)view autoHide:(BOOL)autoHide textOnly:(BOOL)textOnly;

@end
