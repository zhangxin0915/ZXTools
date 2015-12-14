//
//  NSString+Extend.h
//  BCMSystem
//
//  Created by ccg on 14-4-18.
//  Copyright (c) 2014年 mobisoft. All rights reserved.
//  NSString分类扩展方法

#import <Foundation/Foundation.h>
#import "Configuration.h"

@interface NSString (Extend)

#pragma mark - Filter String

/**
 *  @brief  过滤字符串
 *
 *  @param  string 过滤条件字符串
 *
 *  @return Yes/No 如果只包含过滤条件中的字符串则返回Yes, 否则返回No
 */
- (BOOL)filterString:(NSString *)string;

/**
 *  @brief  过滤小数和数字
 *
 *  @param
 *
 *  @return Yes/No 如果只包含数字和小数点则返回Yes, 否则返回No
 */
- (BOOL)filterDecimalNumber;

/**
 *  @brief  过滤数字
 *
 *  @param
 *
 *  @return Yes/No 如果只包含数字则返回Yes, 否则返回No
 */
- (BOOL)filterIntegerNumber;

/**
 *  @brief  过滤Emoji表情
 *
 *  @param
 *
 *  @return Yes/No 如果包含Emoji表情则返回Yes, 否则返回No
 */
- (BOOL)filterEmoji;

#pragma mark - String Format

/**
 *  @brief  格式化小数，将double类型的数字转成保留小数位的字符串
 *
 *  @param number double类型的数字
 *
 *  @return string 保留小数位的字符串
 */
+ (NSString *)numberString:(double)number;

/**
 *  Number转为格式化的金额字符串 000,000.00
 *
 *  @param number NSNumber
 *
 *  @return string
 */
+ (NSString *)stringFromNumber:(NSNumber *)number;

#pragma mark - string size

/**
 *  通过字体计算字符串所占大小
 *
 *  @param font 字体 UIFont
 *
 *  @return CGSize
 */
- (CGSize)sizeFromFont:(UIFont *)font;

/**
 *  @brief  比较字符串是否在范围内
 *
 *  @param  min          最小值
 *  @param  max          最大值
 *  @param  subLength    需要截取比较的长度(截取前缀)
 *
 *  @return bool         是否在范围内
 */
- (BOOL)compareWithMin:(int)min max:(int)max subLength:(int)subLength;

/**
 *  @brief  是否是数字
 *
 *  @param
 *
 *  @return
 */
- (BOOL)isNumber;

@end
