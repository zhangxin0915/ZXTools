//
//  Configuration.h
//  BCMSystem
//
//  Created by ccg on 14-4-9.
//  Copyright (c) 2014年 mobisoft. All rights reserved.
//  系统配置文件

/************常用宏定义************/
#define kDateViewHeight 256
#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)
#define RGBCOLOR(r,g,b) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:1]
#define RGBACOLOR(r,g,b,a) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:(a)/1.0f]

#define kScreenCenter CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2)

// 获取RGB颜色
#define RGBA(r,g,b,a) [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]
#define RGB(r,g,b) RGBA(r,g,b,1.0f)


/************单例************/
// @interface
#define singleton_interface(className) \
+ (className *)shared##className;

// @implementation
#define singleton_implementation(className) \
static className *_instance; \
+ (id)allocWithZone:(NSZone *)zone \
{ \
static dispatch_once_t onceToken; \
dispatch_once(&onceToken, ^{ \
_instance = [super allocWithZone:zone]; \
}); \
return _instance; \
} \
+ (className *)shared##className \
{ \
static dispatch_once_t onceToken; \
dispatch_once(&onceToken, ^{ \
_instance = [[self alloc] init]; \
}); \
return _instance; \
}

/************字符串过滤************/
#define DECIMALNUMBER @"0123456789.\n"
#define INTEGERNUMBER @"0123456789\n"
#define ALPHANUMBER   @"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789.\n"

/************小数配置************/
#define kDecimalLength 2                                                                // 保留的小数位数
#define kNumberFormatStr [NSString stringWithFormat:@"%%.0%dlf", kDecimalLength]        // 小数位数的格式化字符串

/************主题配置************/
#define kLeftNavBarColor         RGBCOLOR(48, 168, 120)                                 // 左边导航栏Nav的颜色
#define kRightBarColor           RGBCOLOR(46, 183, 126)                                 // 右边导航栏Nav的颜色
#define kButtonTitleColor        [UIColor blackColor]                                   // Button的文本颜色
#define kButtonTitleFont         [UIFont systemFontOfSize:17]                           // Button的字体大小

#define kBarItemTitleColor       RGBCOLOR(0, 92, 255)                                   // BarButtonItem的文本颜色
#define kBarItemTitleFont        [UIFont boldSystemFontOfSize:16]                       // BarButtonItem的字体大小
#define kBarTitleFont            [UIFont boldSystemFontOfSize:17]                       // Bar的标题字大小
#define kBarTitleColor           [UIColor blackColor]                                   // Bar的标题字颜色

#define kLabelFont               [UIFont systemFontOfSize:17]                           // Label的字体
#define kLabelTextColor          [UIColor blackColor]                                   // Label的文本颜色
#define kLabelTextAlignment      NSTextAlignmentLeft                                    // Label的文本对齐
#define kTextFieldFont           [UIFont systemFontOfSize:14]                           // TextField的字体
#define kTextFieldTextColor      [UIColor blackColor]                                   // TextField的文本颜色
#define kTextPlaceholder         @"请输入文本"                                            // 文本的水印文字
#define kNumberPlaceholder       @"请输入金额"                                            // 数字的水印文字
#define kTextFieldTextAlignment  NSTextAlignmentRight                                   // Label的文本对齐

#define kTextViewFont            [UIFont systemFontOfSize:14]                           // TextView的字体
#define kTextViewTextColor       [UIColor blackColor]                                   // TextView的颜色
#define kTextViewTextAlignment   NSTextAlignmentLeft                                    // TextView的文本对齐

#define kGlobalVCBackground         RGBCOLOR(249, 249, 249)                                // 全局统一VC背景色
#define kGlobalCellBackground       [UIColor whiteColor]                                   // 全局统一Cell背景色
#define kGlobalCellSelectBackground RGBCOLOR(242, 242, 246)                                // 全局统一Cell选中后背景色
#define kGlobalSeparatorColor       RGBCOLOR(211, 210, 214)                                // 全局统一分隔线颜色

/************头文件引用************/
#import "UIButton+Extend.h"
#import "UIBarButtonItem+Extend.h"
#import "UIImage+Extend.h"
#import "UILabel+Extend.h"
#import "UITextField+Extend.h"
#import "UITextView+Extend.h"
#import "UIAlertView+Extend.h"
#import "MBProgressHUD+Extend.h"
#import "NSString+Extend.h"
#import "NSDate+Extend.h"
#import "UIDevice+Machine.h"

/****************自定义日志输出****************/
#ifdef DEBUG
#define CGLog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);
#else
#define CGLog(...)







#endif



