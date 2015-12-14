//
//  UITextField+Extend.h
//  BCMSystem
//
//  Created by ccg on 14-4-17.
//  Copyright (c) 2014年 mobisoft. All rights reserved.
//  UITextField分类扩展方法

#import <UIKit/UIKit.h>

@interface UITextField (Extend)

#pragma mark - Create Number UITextField

/**
 *  @brief  创建默认数字TextField
 *
 *  @param
 *
 *  @return
 */
+ (UITextField *)textFieldByNumberWithFrame:(CGRect)frame;

/**
 *  @brief  创建带水印数字TextField
 *
 *  @param
 *
 *  @return
 */
+ (UITextField *)textFieldByNumberWithFrame:(CGRect)frame placeholder:(NSString *)placeholder;

/**
 *  @brief  创建带对齐方式的数字TextField
 *
 *  @param
 *
 *  @return
 */
+ (UITextField *)textFieldByNumberWithFrame:(CGRect)frame
                                placeholder:(NSString *)placeholder
                              textAlignment:(NSTextAlignment)textAlignment;

/**
 *  @brief  创建多参数的数字TextField
 *
 *  @param
 *
 *  @return
 */
+ (UITextField *)textFieldByNumberWithFrame:(CGRect)frame
                                placeholder:(NSString *)placeholder
                                       font:(UIFont *)font
                                  textColor:(UIColor *)textColor
                              textAlignment:(NSTextAlignment)textAlignment;

#pragma mark - Create Text UITextField

/**
 *  @brief  创建默认文本TextField
 *
 *  @param
 *
 *  @return
 */
+ (UITextField *)textFieldByTextWithFrame:(CGRect)frame;

/**
 *  @brief  创建带水印文本TextField
 *
 *  @param
 *
 *  @return
 */
+ (UITextField *)textFieldByTextWithFrame:(CGRect)frame placeholder:(NSString *)placeholder;

/**
 *  @brief  创建带对齐方式的文本TextField
 *
 *  @param
 *
 *  @return
 */
+ (UITextField *)textFieldByTextWithFrame:(CGRect)frame
                              placeholder:(NSString *)placeholder
                            textAlignment:(NSTextAlignment)textAlignment;

/**
 *  @brief  创建多参数的文本TextField
 *
 *  @param
 *
 *  @return
 */
+ (UITextField *)textFieldByTextWithFrame:(CGRect)frame
                              placeholder:(NSString *)placeholder
                                     font:(UIFont *)font
                                textColor:(UIColor *)textColor
                            textAlignment:(NSTextAlignment)textAlignment;

#pragma mark - Create UITextField

/**
 *  @brief  创建多参数的TextField
 *
 *  @param
 *
 *  @return
 */
+ (UITextField *)textFieldWithFrame:(CGRect)frame
                        placeholder:(NSString *)placeholder
                               font:(UIFont *)font
                          textColor:(UIColor *)textColor
                      textAlignment:(NSTextAlignment)textAlignment
                       keyboardType:(UIKeyboardType)keyboardType;

@end
