//
//  UIBarButtonItem+Extend.m
//  BCMSystem
//
//  Created by ccg on 14-4-11.
//  Copyright (c) 2014年 mobisoft. All rights reserved.
//

#import "UIBarButtonItem+Extend.h"
#import "Configuration.h"

@implementation UIBarButtonItem (Extend)

#pragma mark - Create Title BarButtonItem

+ (UIBarButtonItem *)itemWithTitle:(NSString *)title target:(id)target action:(SEL)action {
    UIButton *btn = [UIButton buttonWithTitle:title
                                   titleColor:kBarItemTitleColor
                                    titleFont:kBarItemTitleFont
                                        frame:CGRectMake(0, 0, 32, 32)
                                       target:target
                                       action:action];
    UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
    
    return barButtonItem;
}

#pragma mark - Create Image BarButtonItem

+ (UIBarButtonItem *)itemWithImage:(UIImage *)image target:(id)target action:(SEL)action {
    UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc] initWithImage:image style:UIBarButtonItemStylePlain target:target action:action];
    
    return barButtonItem;
}

+ (UIBarButtonItem *)itemWithImageName:(NSString *)imageName target:(id)target action:(SEL)action {
    UIImage *image = [UIImage imageNamed:imageName];
    return [self itemWithImage:image target:target action:action];
}

#pragma mark - Create BarButtonItem

+ (UIBarButtonItem *)itemWithBarButtonSystemItem:(UIBarButtonSystemItem)systemItem target:(id)target action:(SEL)action {
    UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:systemItem target:target action:action];
    
    return barButtonItem;
}

@end
