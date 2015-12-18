//
//  NSDate+Extend.m
//  BCMSystem
//
//  Created by ccg on 14-4-18.
//  Copyright (c) 2014年 mobisoft. All rights reserved.
//


#import "NSDate+Extend.h"

@implementation NSDate (Extend)

#pragma mark - Custom Method

// 获取年月日如:19871127.
- (NSString *)getFormatYearMonthDay
{
    NSString *string = [NSString stringWithFormat:@"%d%02d%02d",[self getYear],[self getMonth],[self getDay]];
    return string;
}

// 该日期是该年的第几周
- (int )getWeekOfYear
{
    int i;
    int year = [self getYear];
    NSDate *date = [self endOfWeek];
    for (i = 1;[[date dateAfterDay:-7 * i] getYear] == year;i++)
    {
    }
    return i;
}

// 两个日期之间的天数
- (NSUInteger)dateStartDay:(NSDate *)startDay endDay:(NSDate *)endDay
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    unsigned int unitFlags = NSMonthCalendarUnit | NSDayCalendarUnit;
    NSDateComponents *comps = [calendar components:unitFlags fromDate:startDay  toDate:endDay  options:0];
    int days = [comps day];
    return days;
}

// 返回day天后的日期(若day为负数,则为|day|天前的日期)
- (NSDate *)dateAfterDay:(int)day
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    // Get the weekday component of the current date
    // NSDateComponents *weekdayComponents = [calendar components:NSWeekdayCalendarUnit fromDate:self];
    NSDateComponents *componentsToAdd = [[NSDateComponents alloc] init];
    // to get the end of week for a particular date, add (7 - weekday) days
    [componentsToAdd setDay:day];
    NSDate *dateAfterDay = [calendar dateByAddingComponents:componentsToAdd toDate:self options:0];
    
    return dateAfterDay;
}

#pragma mark 获取day天以前的日期
- (NSDate *)dateBeforeDay:(int)day
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *components = [calendar components:NSWeekdayCalendarUnit | NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit fromDate:self];
    [components setDay:([components day] - day)];
    
    NSDate *dateBefore = [calendar dateFromComponents:components];
    return dateBefore;
}

#pragma mark 返回week周之前的日期
- (NSDate *)dateBeforeWeek:(int)week
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *components = [calendar components:NSWeekdayCalendarUnit | NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit fromDate:self];
    [components setDay:([components day] - 7 * week)];
    NSDate *dateBefore = [calendar dateFromComponents:components];
    return dateBefore;
}

#pragma mark 返回month月之前的日期
- (NSDate *)dateBeforeMonth:(int)month
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *components = [calendar components:NSWeekdayCalendarUnit | NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit fromDate:self];
    [components setMonth:([components month] - month)];
    NSDate *dateBefore = [calendar dateFromComponents:components];
    return dateBefore;
}
#pragma mark 返回year年之前的日期
- (NSDate *)dateBeforeYear:(int)year
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *components = [calendar components:NSWeekdayCalendarUnit | NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit fromDate:self];
    [components setYear:([components year] - year)];
    NSDate *dateBefore = [calendar dateFromComponents:components];
    return dateBefore;
}
#pragma mark 返回month月的第一天
+ (NSDate *)date1stDayOfBeforeMonth:(int)month
{
    NSDate *date = [self dateLastDayOfBeforeMonth:month];
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *components = [calendar components:NSWeekdayCalendarUnit | NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit fromDate:date];
    [components setDay: ([components day] - [components day] + 1 ) ];

    NSDate *dateBefore = [calendar dateFromComponents:components];
    return dateBefore;
}

#pragma mark 返回month月的最后一天
+ (NSDate *)dateLastDayOfBeforeMonth:(int)month
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *components = [calendar components:NSWeekdayCalendarUnit | NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit fromDate:[[NSDate alloc] init]];
    [components setMonth:([components month] - month + 1)];
    [components setDay: ([components day] - [components day]  ) ];
    NSDate *dateBefore = [calendar dateFromComponents:components];
    return dateBefore;
}




// month个月后的日期
- (NSDate *)dateafterMonth:(int)month
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *componentsToAdd = [[NSDateComponents alloc] init];
    [componentsToAdd setMonth:month];
    NSDate *dateAfterMonth = [calendar dateByAddingComponents:componentsToAdd toDate:self options:0];
    
    return dateAfterMonth;
}

// 获取日
- (NSUInteger)getDay{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *dayComponents = [calendar components:(NSDayCalendarUnit) fromDate:self];
    return [dayComponents day];
    
}

// 获取月
- (NSUInteger)getMonth
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *dayComponents = [calendar components:(NSMonthCalendarUnit) fromDate:self];
    return [dayComponents month];
}

// 获取年
- (NSUInteger)getYear
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *dayComponents = [calendar components:(NSYearCalendarUnit) fromDate:self];
    return [dayComponents year];
}

// 获取小时
- (int )getHour {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSUInteger unitFlags =NSYearCalendarUnit| NSMonthCalendarUnit | NSDayCalendarUnit |NSHourCalendarUnit|NSMinuteCalendarUnit;
    NSDateComponents *components = [calendar components:unitFlags fromDate:self];
    NSInteger hour = [components hour];
    return (int)hour;
}

// 获取分钟
- (int)getMinute {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSUInteger unitFlags =NSYearCalendarUnit| NSMonthCalendarUnit | NSDayCalendarUnit |NSHourCalendarUnit|NSMinuteCalendarUnit;
    NSDateComponents *components = [calendar components:unitFlags fromDate:self];
    NSInteger minute = [components minute];
    return (int)minute;
}

// 在当前日期前几天
- (NSUInteger)daysAgo {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *components = [calendar components:(NSDayCalendarUnit)
                                               fromDate:self
                                                 toDate:[NSDate date]
                                                options:0];
    return [components day];
}

// 午夜时间距今几天
- (NSUInteger)daysAgoAgainstMidnight {
    // get a midnight version of ourself:
    NSDateFormatter *mdf = [[NSDateFormatter alloc] init];
    [mdf setDateFormat:@"yyyy-MM-dd"];
    NSDate *midnight = [mdf dateFromString:[mdf stringFromDate:self]];
    
    return (int)[midnight timeIntervalSinceNow] / (60*60*24) *-1;
}

- (NSString *)stringDaysAgo {
    return [self stringDaysAgoAgainstMidnight:YES];
}

- (NSString *)stringDaysAgoAgainstMidnight:(BOOL)flag {
    NSUInteger daysAgo = (flag) ? [self daysAgoAgainstMidnight] : [self daysAgo];
    NSString *text = nil;
    switch (daysAgo) {
        case 0:
            text = @"Today";
            break;
        case 1:
            text = @"Yesterday";
            break;
        default:
            text = [NSString stringWithFormat:@"%d days ago", daysAgo];
    }
    return text;
}

// 返回一周的第几天(周末为第一天)
- (NSUInteger)getWeekday {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *weekdayComponents = [calendar components:(NSWeekdayCalendarUnit) fromDate:self];
    return [weekdayComponents weekday];
}
// 返回星期几的字符串
- (NSString *)getWeekString
{
    switch ([self getWeekday]) {
        case 1:
            return @"星期日";
        case 2:
            return @"星期一";
        case 3:
            return @"星期二";
        case 4:
            return @"星期三";
        case 5:
            return @"星期四";
        case 6:
            return @"星期五";
        case 7:
            return @"星期六";
         
    }
    return nil;
}
// 返回周日的的开始时间
- (NSDate *)beginningOfWeek {
    // largely borrowed from "Date and Time Programming Guide for Cocoa"
    // we'll use the default calendar and hope for the best
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDate *beginningOfWeek = nil;
    BOOL ok = [calendar rangeOfUnit:NSWeekCalendarUnit startDate:&beginningOfWeek
                           interval:NULL forDate:self];
    if (ok) {
        return beginningOfWeek;
    }
    
    // couldn't calc via range, so try to grab Sunday, assuming gregorian style
    // Get the weekday component of the current date
    NSDateComponents *weekdayComponents = [calendar components:NSWeekdayCalendarUnit fromDate:self];
    
    /*
     Create a date components to represent the number of days to subtract from the current date.
     The weekday value for Sunday in the Gregorian calendar is 1, so subtract 1 from the number of days to subtract from the date in question.  (If today's Sunday, subtract 0 days.)
     */
    NSDateComponents *componentsToSubtract = [[NSDateComponents alloc] init];
    [componentsToSubtract setDay: 0 - ([weekdayComponents weekday] - 1)];
    beginningOfWeek = nil;
    beginningOfWeek = [calendar dateByAddingComponents:componentsToSubtract toDate:self options:0];
    
    //normalize to midnight, extract the year, month, and day components and create a new date from those components.
    NSDateComponents *components = [calendar components:(NSYearCalendarUnit | NSMonthCalendarUnit |NSDayCalendarUnit)
                                               fromDate:beginningOfWeek];
    return [calendar dateFromComponents:components];
}
// 返回当前天的年月日.
- (NSDate *)beginningOfDay {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    // Get the weekday component of the current date
    NSDateComponents *components = [calendar components:(NSYearCalendarUnit | NSMonthCalendarUnit |NSDayCalendarUnit)
                                               fromDate:self];
    return [calendar dateFromComponents:components];
}
// 返回该月的第一天
- (NSDate *)beginningOfMonth
{
    return [self dateAfterDay:-[self getDay] + 1];
}
// 该月的最后一天
- (NSDate *)endOfMonth
{
    return [[[self beginningOfMonth] dateafterMonth:1] dateAfterDay:-1];
}
// 返回当前周的周末
- (NSDate *)endOfWeek {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    // Get the weekday component of the current date
    NSDateComponents *weekdayComponents = [calendar components:NSWeekdayCalendarUnit fromDate:self];
    NSDateComponents *componentsToAdd = [[NSDateComponents alloc] init];
    // to get the end of week for a particular date, add (7 - weekday) days
    [componentsToAdd setDay:(7 - [weekdayComponents weekday])];
    NSDate *endOfWeek = [calendar dateByAddingComponents:componentsToAdd toDate:self options:0];
    
    return endOfWeek;
}

#pragma mark - NSDate Format

// 转为NSString类型的
+ (NSDate *)dateFromString:(NSString *)string {
    return [NSDate dateFromString:string withFormat:[NSDate dbFormatString]];
}

+ (NSDate *)dateFromString:(NSString *)string withFormat:(NSString *)format {
    NSDateFormatter *inputFormatter = [[NSDateFormatter alloc] init];
    [inputFormatter setDateFormat:format];
    NSDate *date = [inputFormatter dateFromString:string];
    return date;
}

+ (NSString *)stringFromDate:(NSDate *)date withFormat:(NSString *)format {
    return [date stringWithFormat:format];
}

+ (NSString *)stringFromDate:(NSDate *)date {
    return [date string];
}

+ (NSString *)stringForDisplayFromDate:(NSDate *)date prefixed:(BOOL)prefixed {
    /*
     * if the date is in today, display 12-hour time with meridian,
     * if it is within the last 7 days, display weekday name (Friday)
     * if within the calendar year, display as Jan 23
     * else display as Nov 11, 2008
     */
    
    NSDate *today = [NSDate date];
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *offsetComponents = [calendar components:(NSYearCalendarUnit | NSMonthCalendarUnit |NSDayCalendarUnit)
                                                     fromDate:today];
    
    NSDate *midnight = [calendar dateFromComponents:offsetComponents];
    
    NSDateFormatter *displayFormatter = [[NSDateFormatter alloc] init];
    NSString *displayString = nil;
    
    // comparing against midnight
    if ([date compare:midnight] == NSOrderedDescending) {
        if (prefixed) {
            [displayFormatter setDateFormat:@"'at' h:mm a"]; // at 11:30 am
        } else {
            [displayFormatter setDateFormat:@"h:mm a"]; // 11:30 am
        }
    } else {
        // check if date is within last 7 days
        NSDateComponents *componentsToSubtract = [[NSDateComponents alloc] init];
        [componentsToSubtract setDay:-7];
        NSDate *lastweek = [calendar dateByAddingComponents:componentsToSubtract toDate:today options:0];
        if ([date compare:lastweek] == NSOrderedDescending) {
            [displayFormatter setDateFormat:@"EEEE"]; // Tuesday
        } else {
            // check if same calendar year
            NSInteger thisYear = [offsetComponents year];
            
            NSDateComponents *dateComponents = [calendar components:(NSYearCalendarUnit | NSMonthCalendarUnit |NSDayCalendarUnit)
                                                           fromDate:date];
            NSInteger thatYear = [dateComponents year];
            if (thatYear >= thisYear) {
                [displayFormatter setDateFormat:@"MMM d"];
            } else {
                [displayFormatter setDateFormat:@"MMM d, yyyy"];
            }
        }
        if (prefixed) {
            NSString *dateFormat = [displayFormatter dateFormat];
            NSString *prefix = @"'on' ";
            [displayFormatter setDateFormat:[prefix stringByAppendingString:dateFormat]];
        }
    }
    
    // use display formatter to return formatted date string
    displayString = [displayFormatter stringFromDate:date];
    return displayString;
}

+ (NSString *)stringForDisplayFromDate:(NSDate *)date {
    return [self stringForDisplayFromDate:date prefixed:NO];
}

- (NSString *)stringWithFormat:(NSString *)format {
    NSDateFormatter *outputFormatter = [[NSDateFormatter alloc] init];
    [outputFormatter setDateFormat:format];
    NSString *timestamp_str = [outputFormatter stringFromDate:self];
    return timestamp_str;
}

- (NSString *)string {
    return [self stringWithFormat:[NSDate dbFormatString]];
}

- (NSString *)stringWithDateStyle:(NSDateFormatterStyle)dateStyle timeStyle:(NSDateFormatterStyle)timeStyle {
    NSDateFormatter *outputFormatter = [[NSDateFormatter alloc] init];
    [outputFormatter setDateStyle:dateStyle];
    [outputFormatter setTimeStyle:timeStyle];
    NSString *outputString = [outputFormatter stringFromDate:self];
    return outputString;
}

+ (NSString *)dateFormatString {
    return @"yyyy-MM-dd";
}

+ (NSString *)timeFormatString {
    return @"HH:mm:ss";
}

+ (NSString *)timestampFormatString {
    return @"yyyy-MM-dd HH:mm:ss";
}

// preserving for compatibility
+ (NSString *)dbFormatString {
    return [NSDate timestampFormatString];
}

+ (NSString *)getMonthString {
    return [[NSDate date] stringWithFormat:@"yyyy年MM月"];
}

- (NSString *)getMonthString {
    return [self stringWithFormat:@"yyyy年MM月"];
}

- (NSString *)getDateString
{
    return [self stringWithFormat:@"yyyyMM"];
}


- (NSString *)getYearMonthDayInChineseString
{
    return [self stringWithFormat:@"yyyy年MM月dd日"];
}


- (NSString *)getMonthStringInChinese{
    
    switch ([self getMonth]) {

        case 1:
            return @"一月";
            break;
        case 2:
            return @"二月";
            break;
        case 3:
            return @"三月";
            break;
        case 4:
            return @"四月";
            break;
        case 5:
            return @"五月";
            break;
        case 6:
            return @"六月";
            break;
        case 7:
            return @"七月";
            break;
        case 8:
            return @"八月";
            break;
        case 9:
            return @"九月";
            break;
        case 10:
            return @"十月";
            break;
        case 11:
            return @"十一月";
            break;
        case 12:
            return @"十二月";
            break;
        default:
            break;
    }
    
    
    
    return [self stringWithFormat:@"yyyy年MM月dd日"];
}



+ (NSString *)getSelectMonthWithIndex:(int)index
{
    NSString *selectMonth;
    switch (index) {
        case 0:
        {
            selectMonth = [NSString stringWithFormat:@"%d%@",[[NSDate date] getYear],@"01"];
        }
            break;
        case 1:
        {
            selectMonth = [NSString stringWithFormat:@"%d%@",[[NSDate date] getYear],@"02"];
        }
            break;
        case 2:
        {
            selectMonth = [NSString stringWithFormat:@"%d%@",[[NSDate date] getYear],@"03"];
        }
            break;
        case 3:
        {
            selectMonth = [NSString stringWithFormat:@"%d%@",[[NSDate date] getYear],@"04"];
        }
            break;
        case 4:
        {
            selectMonth = [NSString stringWithFormat:@"%d%@",[[NSDate date] getYear],@"05"];
        }
            break;
        case 5:
        {
            selectMonth = [NSString stringWithFormat:@"%d%@",[[NSDate date] getYear],@"06"];
        }
            break;
        case 6:
        {
            selectMonth = [NSString stringWithFormat:@"%d%@",[[NSDate date] getYear],@"07"];
        }
            break;
        case 7:
        {
            selectMonth = [NSString stringWithFormat:@"%d%@",[[NSDate date] getYear],@"08"];
        }
            break;
        case 8:
        {
            selectMonth = [NSString stringWithFormat:@"%d%@",[[NSDate date] getYear],@"09"];
        }
            break;
        case 9:
        {
            selectMonth = [NSString stringWithFormat:@"%d%@",[[NSDate date] getYear],@"10"];
        }
            break;
        case 10:
        {
            selectMonth = [NSString stringWithFormat:@"%d%@",[[NSDate date] getYear],@"11"];
        }
            break;
        case 11:
        {
            selectMonth = [NSString stringWithFormat:@"%d%@",[[NSDate date] getYear],@"12"];
        }
            break;
            
        default:
            break;
    }
    return selectMonth;
}



+ (NSArray *)getLast4QuaterInChineseWithDate:(NSDate *)date{
    NSMutableArray *quaterArray = [NSMutableArray arrayWithCapacity:4];
    [date dateBeforeMonth:3];
    for (int i = 0; i <4 ; i++) {
        NSDate *qDate = [date dateBeforeMonth:3*i];
        
        [quaterArray addObject:[NSString stringWithFormat:@"%i年第%i季度",[qDate getYear],[qDate getQuater]]];
        
    }

    return quaterArray;
}

+ (NSArray *)getLast4QuaterWithDate:(NSDate *)date{
    NSMutableArray *quaterArray = [NSMutableArray arrayWithCapacity:4];
    [date dateBeforeMonth:3];
    for (int i = 0; i <4 ; i++) {
        NSDate *qDate = [date dateBeforeMonth:3*i];
        
        [quaterArray addObject:[NSString stringWithFormat:@"%i0%i",[qDate getYear],[qDate getQuater]]];
        
    }
    
    return quaterArray;
}


- (NSUInteger)getQuater{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *dayComponents = [calendar components:(NSMonthCalendarUnit) fromDate:self];
    switch ([dayComponents month]) {
        case 1:
        case 2:
        case 3:
            return 1;
            break;
        case 4:
        case 5:
        case 6:
            return 2;
            break;
        case 7:
        case 8:
        case 9:
            return 3;
            break;
        case 10:
        case 11:
        case 12:
            return 4;
            break;
        default:
            return 0;
    }
    
    
}
+ (BOOL)isDateWithString:(NSString *)dateStr
{
    NSString *regex = @"(([0-9]{3}[1-9]|[0-9]{2}[1-9][0-9]{1}|[0-9]{1}[1-9][0-9]{2}|[1-9][0-9]{3})-(((0[13578]|1[02])-(0[1-9]|[12][0-9]|3[01]))|((0[469]|11)-(0[1-9]|[12][0-9]|30))|(02-(0[1-9]|[1][0-9]|2[0-8]))))|((([0-9]{2})(0[48]|[2468][048]|[13579][26])|((0[48]|[2468][048]|[3579][26])00))-02-29)";
    
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    
    BOOL isDate = [pred evaluateWithObject:dateStr];
    
    return isDate;
}



@end
