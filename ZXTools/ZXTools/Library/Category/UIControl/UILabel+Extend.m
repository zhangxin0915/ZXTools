//
//  UILabel+Extend.m
//  BCMSystem
//
//  Created by ccg on 14-4-17.
//  Copyright (c) 2014年 mobisoft. All rights reserved.
//
#import "UILabel+Extend.h"
#import "Configuration.h"
@implementation UILabel (Extend)

#pragma mark - Create UILabel

+ (UILabel *)labelWithText:(NSString *)text {
    return [self labelWithText:text frame:CGRectZero];
}

+ (UILabel *)labelWithText:(NSString *)text frame:(CGRect)frame {
    return [self labelWithText:text font:kLabelFont frame:frame textColor:kLabelTextColor textAlignment:kLabelTextAlignment];
}

+ (UILabel *)labelWithText:(NSString *)text font:(UIFont *)font frame:(CGRect)frame textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment {
    return [self labelWithText:text font:font frame:frame textColor:textColor backgroundColor:[UIColor clearColor] textAlignment:textAlignment isLineBreak:YES];
}

+ (UILabel *)labelWithText:(NSString *)text font:(UIFont *)font frame:(CGRect)frame textColor:(UIColor *)textColor backgroundColor:(UIColor *)backgroundColor textAlignment:(NSTextAlignment)textAlignment isLineBreak:(BOOL)isLineBreak {
    UILabel *label =[[UILabel alloc] initWithFrame:frame];
    label.text = text;
    label.font = font;
    label.textColor = textColor;
    label.backgroundColor = backgroundColor;
    label.textAlignment = textAlignment;
    
    if (isLineBreak) {
        label.lineBreakMode = NSLineBreakByWordWrapping;
        label.numberOfLines = 0;
    }
    
    return label;
}

+ (UILabel *)labelWithAttributedText:(NSAttributedString *)attributedText
{
    UILabel *label = [[UILabel alloc] init];
    label.attributedText = attributedText;
    
    return label;
}

+ (UILabel *)labelWithAttributedText:(NSAttributedString *)attributedText frame:(CGRect)frame
{
    UILabel *label = [self labelWithAttributedText:attributedText];
    label.frame = frame;
    
    return label;
}

@end
