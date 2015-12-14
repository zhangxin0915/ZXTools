//
//  UITextView+Extend.h
//  BCMSystem
//
//  Created by ccg on 14-5-26.
//  Copyright (c) 2014年 mobisoft. All rights reserved.
//  UITextView分类扩展方法

#import <UIKit/UIKit.h>

@interface UITextView (Extend)

#pragma mark - Create UITextView

/**
 *  @brief  创建默认的UITextView
 *
 *  @param
 *
 *  @return
 */
+ (UITextView *)textViewWithFrame:(CGRect)frame;

/**
 *  @brief  创建带对齐方式的UITextView
 *
 *  @param
 *
 *  @return
 */
+ (UITextView *)textViewWithFrame:(CGRect)frame textAlignment:(NSTextAlignment)textAlignment;

/**
 *  @brief  创建默认字体的UITextView
 *
 *  @param
 *
 *  @return
 */
+ (UITextView *)textViewWithFrame:(CGRect)frame textColor:(UIColor *)textColor;

/**
 *  @brief  创建默认颜色的UITextView
 *
 *  @param
 *
 *  @return
 */
+ (UITextView *)textViewWithFrame:(CGRect)frame font:(UIFont *)font;

/**
 *  @brief  创建默认对齐方式的UITextView
 *
 *  @param
 *
 *  @return
 */
+ (UITextView *)textViewWithFrame:(CGRect)frame font:(UIFont *)font textColor:(UIColor *)textColor;

/**
 *  @brief  创建多参数的默认键盘UITextView
 *
 *  @param
 *
 *  @return
 */
+ (UITextView *)textViewWithFrame:(CGRect)frame
                             font:(UIFont *)font
                        textColor:(UIColor *)textColor
                    textAlignment:(NSTextAlignment)textAlignment;

/**
 *  @brief  创建多参数的UITextView
 *
 *  @param
 *
 *  @return
 */
+ (UITextView *)textViewWithFrame:(CGRect)frame
                               font:(UIFont *)font
                          textColor:(UIColor *)textColor
                      textAlignment:(NSTextAlignment)textAlignment
                       keyboardType:(UIKeyboardType)keyboardType;

@end
