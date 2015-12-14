//
//  UILabel+Extend.h
//  BCMSystem
//
//  Created by ccg on 14-4-17.
//  Copyright (c) 2014年 mobisoft. All rights reserved.
//  UILabel分类扩展方法

#import <UIKit/UIKit.h>

@interface UILabel (Extend)

#pragma mark - Create UILabel

/**
 *  @brief  创建默认Label
 *
 *  @param
 *
 *  @return
 */
+ (UILabel *)labelWithText:(NSString *)text;

/**
 *  @brief  创建有frame的Label
 *
 *  @param
 *
 *  @return
 */
+ (UILabel *)labelWithText:(NSString *)text frame:(CGRect)frame;

/**
 *  @brief  创建少参数Label
 *
 *  @param
 *
 *  @return
 */
+ (UILabel *)labelWithText:(NSString *)text
                     font:(UIFont *)font
                    frame:(CGRect)frame
                textColor:(UIColor *)textColor
            textAlignment:(NSTextAlignment)textAlignment;

/**
 *  @brief  创建多参数Label
 *
 *  @param isLineBreak 是否自动换行
 *
 *  @return
 */
+ (UILabel *)labelWithText:(NSString *)text
                     font:(UIFont *)font
                    frame:(CGRect)frame
                textColor:(UIColor *)textColor
          backgroundColor:(UIColor *)backgroundColor
            textAlignment:(NSTextAlignment)textAlignment
              isLineBreak:(BOOL)isLineBreak;

/**
 *  brief   创建多属性参数Label
 *
 *  @param  attributedText 属性文本
 *
 *  @return Label
 */
+ (UILabel *)labelWithAttributedText:(NSAttributedString *)attributedText;

/**
 *  brief  创建带frame多属性参数Label
 *
 *  @param  attributedText 属性文本
 *  @param  frame          位置大小
 *
 *  @return Label
 */
+ (UILabel *)labelWithAttributedText:(NSAttributedString *)attributedText
                               frame:(CGRect)frame;

@end
