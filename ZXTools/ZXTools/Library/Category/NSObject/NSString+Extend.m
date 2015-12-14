//
//  NSString+Extend.m
//  BCMSystem
//
//  Created by ccg on 14-4-18.
//  Copyright (c) 2014年 mobisoft. All rights reserved.
//
#import "NSString+Extend.h"
#import "Configuration.h"

@implementation NSString (Extend)

#pragma mark - Filter String

- (BOOL)filterString:(NSString *)string {
    // 去反字符,把所有的除了数字的字符都找出来
    NSCharacterSet *cs = [[NSCharacterSet characterSetWithCharactersInString:string] invertedSet];
    
    // componentsSep 把输入框输入的字符根据cs中字符一个一个去除cs字符并分割成单字符并转化为NSArray
    // componentsJoi 是把NSArray的字符通过""无间隔连接成一个NSString字符赋给filtered,就只剩数字
    NSString *filtered = [[self componentsSeparatedByCharactersInSet:cs] componentsJoinedByString:@""];
    BOOL result = [self isEqualToString:filtered];
    
    return result;
}

- (BOOL)filterDecimalNumber {
    return [self filterString:DECIMALNUMBER];
}

- (BOOL)filterIntegerNumber {
    return [self filterString:INTEGERNUMBER];
}

- (BOOL)filterEmoji {
    __block BOOL isEomji = NO;
    
    [self enumerateSubstringsInRange:NSMakeRange(0, [self length]) options:NSStringEnumerationByComposedCharacterSequences usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
         const unichar hs = [substring characterAtIndex:0];
         // surrogate pair
         if (0xd800 <= hs && hs <= 0xdbff) {
             if (substring.length > 1) {
                 const unichar ls = [substring characterAtIndex:1];
                 const int uc = ((hs - 0xd800) * 0x400) + (ls - 0xdc00) + 0x10000;
                 
                 if (0x1d000 <= uc && uc <= 0x1f77f) {
                     isEomji = YES;
                 }
             }
         } else if (substring.length > 1) {
             const unichar ls = [substring characterAtIndex:1];
             
             if (ls == 0x20e3) {
                 isEomji = YES;
             }
         } else {
             // non surrogate
             if (0x2100 <= hs && hs <= 0x27ff && hs != 0x263b) {
                 isEomji = YES;
             } else if (0x2B05 <= hs && hs <= 0x2b07) {
                 isEomji = YES;
             } else if (0x2934 <= hs && hs <= 0x2935) {
                 isEomji = YES;
             } else if (0x3297 <= hs && hs <= 0x3299) {
                 isEomji = YES;
             } else if (hs == 0xa9 || hs == 0xae || hs == 0x303d || hs == 0x3030 || hs == 0x2b55 || hs == 0x2b1c || hs == 0x2b1b || hs == 0x2b50|| hs == 0x231a ) {
                 isEomji = YES;
             }
             
         }
     }];

    return isEomji;
}

#pragma mark - String Format

+ (NSString *)numberString:(double)number {
    return [NSString stringWithFormat:kNumberFormatStr, number];
}

+ (NSString *)stringFromNumber:(NSNumber *)number
{
    if (number.doubleValue == INFINITY || isnan(number.doubleValue)) {
        number = @0;
    }
    NSNumberFormatter* numberFormatter = [[NSNumberFormatter alloc] init];
    
    NSMutableString *formatStr = [NSMutableString stringWithString:@"###,##0."];
    for (int i = 0; i< kDecimalLength; i++) {
        [formatStr appendString:@"0"];
    }
    [numberFormatter setPositiveFormat:formatStr];
    return [numberFormatter stringFromNumber: number];
}

#pragma mark - String size

- (CGSize)sizeFromFont:(UIFont *)font
{
    NSDictionary *textAttributes=[NSDictionary dictionaryWithObject:font forKey:NSFontAttributeName];
    CGSize size=[self sizeWithAttributes:textAttributes];
    return size;
}

- (BOOL)compareWithMin:(int)min max:(int)max subLength:(int)subLength
{
    NSString *temp = [self substringFromIndex:subLength];
    int num = temp.intValue;
    if (num >= min && num <= max) {
        return YES;
    } else {
        return NO;
    }
}

- (BOOL)isNumber
{
    NSNumberFormatter* numberFormatter = [[NSNumberFormatter alloc] init];
    NSNumber* number = [numberFormatter numberFromString:self];
    if (number != nil) {
        return true;
    }
    
    return false;
}

@end
