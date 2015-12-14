//
//  UITextView+Extend.m
//  BCMSystem
//
//  Created by ccg on 14-5-26.
//  Copyright (c) 2014年 mobisoft. All rights reserved.
//

#import "UITextView+Extend.h"
#import "Configuration.h"

@implementation UITextView (Extend)

#pragma mark - Create UITextView

+ (UITextView *)textViewWithFrame:(CGRect)frame {
    return [self textViewWithFrame:frame font:kTextViewFont textColor:kTextViewTextColor];
}

+ (UITextView *)textViewWithFrame:(CGRect)frame textAlignment:(NSTextAlignment)textAlignment {
    return [self textViewWithFrame:frame font:kTextViewFont textColor:kTextViewTextColor textAlignment:textAlignment];
}

+ (UITextView *)textViewWithFrame:(CGRect)frame textColor:(UIColor *)textColor {
    return [self textViewWithFrame:frame font:kTextViewFont textColor:textColor];
}

+ (UITextView *)textViewWithFrame:(CGRect)frame font:(UIFont *)font {
    return [self textViewWithFrame:frame font:font textColor:kTextViewTextColor];
}

+ (UITextView *)textViewWithFrame:(CGRect)frame font:(UIFont *)font textColor:(UIColor *)textColor {
    return [self textViewWithFrame:frame font:font textColor:textColor textAlignment:kTextViewTextAlignment];
}

+ (UITextView *)textViewWithFrame:(CGRect)frame font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment {
    return [self textViewWithFrame:frame font:font textColor:textColor textAlignment:textAlignment keyboardType:UIKeyboardTypeDefault];
}

+ (UITextView *)textViewWithFrame:(CGRect)frame font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment keyboardType:(UIKeyboardType)keyboardType {
    UITextView *textView = [[UITextView alloc] initWithFrame:frame];
    textView.font = font;
    textView.textColor = textColor;
    textView.textAlignment = textAlignment;
    textView.keyboardType = keyboardType;
    textView.autocorrectionType = UITextAutocorrectionTypeNo;
    textView.autocapitalizationType = UITextAutocapitalizationTypeNone;
    textView.returnKeyType = UIReturnKeyDone;
    
    return textView;
}

@end
