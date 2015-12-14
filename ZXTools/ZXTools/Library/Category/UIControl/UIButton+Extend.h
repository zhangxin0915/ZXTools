//
//  UIButton+Extend.h
//  BCMSystem
//
//  Created by ccg on 14-4-11.
//  Copyright (c) 2014年 mobisoft. All rights reserved.
//  UIButton分类扩展方法

#import <UIKit/UIKit.h>

@interface UIButton (Extend)

#pragma mark - Create Image Button

/**
 *  @brief  创建图片Button，不拉伸
 *
 *  @param
 *
 *  @return
 */
+ (UIButton *)buttonWithImage:(UIImage *)image
                        frame:(CGRect)frame
                       target:(id)target
                       action:(SEL)action;

/**
 *  @brief  创建图片Button，默认拉伸
 *
 *  @param
 *
 *  @return
 */
+ (UIButton *)buttonWithImageName:(NSString *)imageName
                        frame:(CGRect)frame
                       target:(id)target
                       action:(SEL)action;

#pragma mark - Create Title Button

/**
 *  @brief  创建默认文本Button
 *
 *  @param
 *
 *  @return
 */
+ (UIButton *)buttonWithTitle:(NSString *)title
                        frame:(CGRect)frame
                       target:(id)target
                       action:(SEL)action;

/**
 *  @brief  创建默认文本的BarButton
 *
 *  @param
 *
 *  @return
 */
+ (UIButton *)barButtonWithTitle:(NSString *)title
                           target:(id)target
                           action:(SEL)action;

/**
 *  @brief  创建多参数文本Button
 *
 *  @param
 *
 *  @return
 */
+ (UIButton *)buttonWithTitle:(NSString *)title
                   titleColor:(UIColor *)titleColor
                    titleFont:(UIFont *)titleFont
                        frame:(CGRect)frame
                       target:(id)target
                       action:(SEL)action;

@end
