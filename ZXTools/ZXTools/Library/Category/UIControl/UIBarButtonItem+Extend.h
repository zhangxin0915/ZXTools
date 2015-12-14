//
//  UIBarButtonItem+Extend.h
//  BCMSystem
//
//  Created by ccg on 14-4-11.
//  Copyright (c) 2014年 mobisoft. All rights reserved.
//  UIBarButtonItem分类扩展方法

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Extend)

#pragma mark - Create Title BarButtonItem

/**
 *  @brief  创建默认文本BarButtonItem
 *
 *  @param
 *
 *  @return
 */
+ (UIBarButtonItem *)itemWithTitle:(NSString *)title target:(id)target action:(SEL)action;

#pragma mark - Create Image BarButtonItem

/**
 *  @brief  创建图片BarButtonItem,图片未拉伸
 *
 *  @param
 *
 *  @return
 */
+ (UIBarButtonItem *)itemWithImage:(UIImage *)image target:(id)target action:(SEL)action;

/**
 *  @brief  创建图片BarButtonItem,图片未拉伸
 *
 *  @param
 *
 *  @return
 */
+ (UIBarButtonItem *)itemWithImageName:(NSString *)imageName target:(id)target action:(SEL)action;

#pragma mark - Create BarButtonItem

/**
 *  @brief  创建默认系统图标BarButtonItem
 *
 *  @param
 *
 *  @return
 */
+ (UIBarButtonItem *)itemWithBarButtonSystemItem:(UIBarButtonSystemItem)systemItem target:(id)target action:(SEL)action;

@end
