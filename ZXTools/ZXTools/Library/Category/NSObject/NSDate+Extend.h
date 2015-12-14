//
//  NSDate+Extend.h
//  BCMSystem
//
//  Created by ccg on 14-4-18.
//  Copyright (c) 2014年 mobisoft. All rights reserved.
//  NSDate分类扩展方法

#import <Foundation/Foundation.h>

@interface NSDate (Extend)

#pragma mark - Custom Method

/**
 *  @brief  获取年月日字符串
 *
 *  @param
 *
 *  @return NSString 比如19871127
 */
- (NSString *)getFormatYearMonthDay;

/**
 *  @brief  该日期是该年的第几周
 *
 *  @param
 *
 *  @return
 */
- (int)getWeekOfYear;

/**
 *  @brief  两个日期之间的天数
 *
 *  @param  startDay 开始时间
 *  @param  endDay   结束时间
 *
 *  @return
 */
- (NSUInteger)dateStartDay:(NSDate *)startDay endDay:(NSDate *)endDay;

/**
 *  @brief  返回day天后的日期
 *
 *  @param  day 天数
 *
 *  @return
 */
- (NSDate *)dateAfterDay:(int)day;

/**
 *  返回day天之前的日期
 *
 *  @param day 天数
 *
 *  @return NSDate
 */
- (NSDate *)dateBeforeDay:(int)day;

/**
 *  返回week周之前的日期
 *
 *  @param week 周数
 *
 *  @return NSDate
 */
- (NSDate *)dateBeforeWeek:(int)week;

/**
 *  返回month月之前的日期
 *
 *  @param month 月数
 *
 *  @return NSDate
 */
- (NSDate *)dateBeforeMonth:(int)month;

/**
 *  返回year年之前的日期
 *
 *  @param year 年数
 *
 *  @return NSDate
 */
- (NSDate *)dateBeforeYear:(int)year;

/**
 *  返回month月的最后一天
 *
 *  @param month 月数
 *
 *  @return NSDate
 */
+ (NSDate *)date1stDayOfBeforeMonth:(int)month;


/**
 *  返回month月的最后一天
 *
 *  @param month 月数
 *
 *  @return NSDate
 */
+ (NSDate *)dateLastDayOfBeforeMonth:(int)month;




/**
 *  @brief  month个月后的日期
 *
 *  @param  month 月数
 *
 *  @return
 */
- (NSDate *)dateafterMonth:(int)month;

/**
 *  @brief  获取日
 *
 *  @param
 *
 *  @return
 */
- (NSUInteger)getDay;

/**
 *  @brief  获取月
 *
 *  @param
 *
 *  @return
 */
- (NSUInteger)getMonth;

/**
 *  @brief  获取年
 *
 *  @param
 *
 *  @return
 */
- (NSUInteger)getYear;

/**
 *  @brief  获取小时
 *
 *  @param
 *
 *  @return
 */
- (int )getHour;

/**
 *  @brief  获取分钟
 *
 *  @param
 *
 *  @return
 */
- (int)getMinute;

/**
 *  @brief  在当前日期前几天
 *
 *  @param
 *
 *  @return
 */
- (NSUInteger)daysAgo;

/**
 *  @brief  午夜时间距今几天
 *
 *  @param
 *
 *  @return
 */
- (NSUInteger)daysAgoAgainstMidnight;

/**
 *  @brief  获取距现在几天的字符串
 *
 *  @param
 *
 *  @return NSString Today、Yesterday等
 */
- (NSString *)stringDaysAgo;

/**
 *  @brief  返回一周的第几天(周末为第一天)
 *
 *  @param
 *
 *  @return
 */
- (NSUInteger)getWeekday;

/**
 *  @brief  返回星期几的字符串
 *
 *  @param
 *
 *  @return
 */
- (NSString *)getWeekString;
/**
 *  @brief  返回周日的的开始时间
 *
 *  @param
 *
 *  @return
 */
- (NSDate *)beginningOfWeek;

/**
 *  @brief  返回该天的开始时间
 *
 *  @param
 *
 *  @return
 */
- (NSDate *)beginningOfDay;

/**
 *  @brief  返回该月的第一天
 *
 *  @param
 *
 *  @return
 */
- (NSDate *)beginningOfMonth;

/**
 *  @brief  返回该月的最后一天
 *
 *  @param
 *
 *  @return
 */
- (NSDate *)endOfMonth;

/**
 *  @brief  返回该周的周末
 *
 *  @param
 *
 *  @return
 */
- (NSDate *)endOfWeek;

#pragma mark - NSDate Format

/**
 *  @brief  将字符串转换成时间
 *
 *  @param  string 时间的字符串(默认为timestamp格式)
 *
 *  @return
 */
+ (NSDate *)dateFromString:(NSString *)string;

/**
 *  @brief  根据时间格式将字符串转换成时间
 *
 *  @param  string 时间的字符串
 *  @param  format 时间格式的字符串
 *
 *  @return
 */
+ (NSDate *)dateFromString:(NSString *)string withFormat:(NSString *)format;

/**
 *  @brief  根据时间格式将时间转换成字符串（类方法）
 *
 *  @param  date   时间
 *  @param  format 时间格式的字符串
 *
 *  @return
 */
+ (NSString *)stringFromDate:(NSDate *)date withFormat:(NSString *)format;

/**
 *  @brief  将时间转换成字符串（类方法）
 *
 *  @param  date 时间(默认为timestamp格式)
 *
 *  @return
 */
+ (NSString *)stringFromDate:(NSDate *)date;

/**
 *  @brief  将时间转换成外国时间字符串
 *
 *  @param  date     时间
 *  @param  prefixed 是否有前缀
 *
 *  @return
 */
+ (NSString *)stringForDisplayFromDate:(NSDate *)date prefixed:(BOOL)prefixed;

/**
 *  @brief  将时间转换成外国时间字符串
 *
 *  @param  date     时间(没有前缀)
 *
 *  @return
 */
+ (NSString *)stringForDisplayFromDate:(NSDate *)date;

/**
 *  @brief  根据时间格式将时间转换成字符串(对象方法)
 *
 *  @param  format 时间格式
 *
 *  @return
 */
- (NSString *)stringWithFormat:(NSString *)format;

/**
 *  @brief  将时间转成字符串(对象方法，默认为timestamp格式)
 *
 *  @param
 *
 *  @return
 */
- (NSString *)string;

/**
 *  @brief  将时间转成字符串(对象方法)
 *
 *  @param  dateStyle 时间格式的枚举
 *  @param  timeStyle 时间格式的枚举
 *
 *  @return
 */
- (NSString *)stringWithDateStyle:(NSDateFormatterStyle)dateStyle timeStyle:(NSDateFormatterStyle)timeStyle;

/**
 *  @brief  返回日期格式的字符串
 *
 *  @param
 *
 *  @return NSString yyyy-MM-dd
 */
+ (NSString *)dateFormatString;

/**
 *  @brief  返回时间格式的字符串
 *
 *  @param
 *
 *  @return NSString HH:mm:ss
 */
+ (NSString *)timeFormatString;

/**
 *  @brief  返回时间戳格式的字符串
 *
 *  @param
 *
 *  @return NSString yyyy-MM-dd HH:mm:ss
 */
+ (NSString *)timestampFormatString;

/**
 *  @brief  获取当前时间的费用月份(类方法)
 *
 *  @param
 *
 *  @return NSString yyyy年MM月
 */
+ (NSString *)getMonthString;

/**
 *  @brief  获取指定时间的费用月份(对象方法)
 *
 *  @param
 *
 *  @return NSString yyyy年MM月
 */
- (NSString *)getMonthString;


/**
 *  @brief  获取指定时间的中文月份
 *
 *  @param
 *
 *  @return NSString  八月
 */
- (NSString *)getMonthStringInChinese;


/**
 *  @brief  获取指定时间的费用月份(对象方法)
 *
 *  @param
 *
 *  @return NSString yyyyMM
 */
- (NSString *)getDateString;

/**
 *  @brief  获取指定时间的年月日(对象方法)
 *
 *  @param
 *
 *  @return NSString yyyy年MM月dd日
 */
- (NSString *)getYearMonthDayInChineseString;

/**
 *  @brief  根据月份获取当前年月(对象方法)
 *
 *  @param
 *
 *  @return NSString yyyyMM
 */
+ (NSString *)getSelectMonthWithIndex:(int)index;

/**
 *  @brief 某时间前4个季度
 *
 *  @param date 时间
 *
 *  @return 季度列表 201401
 */
+ (NSArray *)getLast4QuaterWithDate:(NSDate *)date;


/**
 *  @brief 某时间前4个季度
 *
 *  @param date 时间
 *
 *  @return 季度列表 2014年第1季度
 */
+ (NSArray *)getLast4QuaterInChineseWithDate:(NSDate *)date;


/**
 *  @brief 根据时间取当前季度
 *
 *  @return 1,2,3,4 季度
 */
- (NSUInteger)getQuater;

@end
