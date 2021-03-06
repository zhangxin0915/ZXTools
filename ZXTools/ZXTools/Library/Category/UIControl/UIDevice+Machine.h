//
//  UIDevice+Machine.h
//  SAICCar
//
//  Created by caochungui on 14/11/7.
//  Copyright (c) 2014年 mobisoft. All rights reserved.
//

#import <UIKit/UIKit.h>

// 判读是iPad还是iPhone
#define DEVICE_IS_IPAD    UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad
#define DEVICE_IS_IPHONE  UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone

// 判断是哪个设备
#define DEVICE_IS_IPHONE5S [[UIDevice currentDevice].machine isEqualToString:kiPhone5s]

// 标识是哪个设备
#define kIPadMini2 @"iPad4,4"
#define kIPhone5s  @"iPhone6,2"

// 设备的宽高
#define kIPadBounds         CGRectMake(0, 0, 1024, 768)
#define kIPhone4sBounds     CGRectMake(0, 0, 480, 320)
#define kIPhone5sBounds     CGRectMake(0, 0, 568, 320)
#define kIPhone6Bounds      CGRectMake(0, 0, 667, 375)
#define kIPhone6PlusBounds  CGRectMake(0, 0, 736, 414)

@interface UIDevice (Machine)

- (NSString *)machine;

@end
