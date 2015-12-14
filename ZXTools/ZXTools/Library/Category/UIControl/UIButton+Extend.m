//
//  UIButton+Extend.m
//  BCMSystem
//
//  Created by ccg on 14-4-11.
//  Copyright (c) 2014年 mobisoft. All rights reserved.
//

#import "UIButton+Extend.h"
#import "Configuration.h"

@implementation UIButton (Create)

#pragma mark - Create Image Button

+ (UIButton *)buttonWithImage:(UIImage *)image frame:(CGRect)frame target:(id)target action:(SEL)action {
    return [self buttonWithTitle:nil titleColor:nil titleFont:nil image:image backgroundImage:nil frame:frame target:target action:action];
}

+ (UIButton *)buttonWithImageName:(NSString *)imageName frame:(CGRect)frame target:(id)target action:(SEL)action {
    UIImage *image = [UIImage stretchImageWithName:imageName];
    return [self buttonWithImage:image frame:frame target:target action:action];
}

#pragma mark - Create Title Button

+ (UIButton *)buttonWithTitle:(NSString *)title frame:(CGRect)frame target:(id)target action:(SEL)action {
    return [self buttonWithTitle:title titleColor:kButtonTitleColor titleFont:kButtonTitleFont frame:frame target:target action:action];
}

+ (UIButton *)barButtonWithTitle:(NSString *)title target:(id)target action:(SEL)action
{
    return [self buttonWithTitle:title titleColor:kBarItemTitleColor titleFont:kBarItemTitleFont frame:CGRectMake(0, 0, 32, 32) target:target action:action];
}

+ (UIButton *)buttonWithTitle:(NSString *)title titleColor:(UIColor *)titleColor titleFont:(UIFont *)titleFont frame:(CGRect)frame target:(id)target action:(SEL)action {
    
    return [self buttonWithTitle:title titleColor:titleColor titleFont:titleFont image:nil backgroundImage:nil frame:frame target:target action:action];
}

#pragma mark - Create Button

+ (UIButton *)buttonWithTitle:(NSString *)title titleColor:(UIColor *)titleColor titleFont:(UIFont *)titleFont image:(UIImage *)image backgroundImage:(UIImage *)backgroundImage frame:(CGRect)frame target:(id)target action:(SEL)action {
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:titleColor forState:UIControlStateNormal];
    [button.titleLabel setFont:titleFont];
    [button setImage:image forState:UIControlStateNormal];
    [button setBackgroundImage:backgroundImage forState:UIControlStateNormal];
    [button setFrame:frame];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return button;
}

@end
