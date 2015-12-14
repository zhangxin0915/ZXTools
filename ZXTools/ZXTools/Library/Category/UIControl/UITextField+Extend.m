//
//  UITextField+Extend.m
//  BCMSystem
//
//  Created by ccg on 14-4-17.
//  Copyright (c) 2014年 mobisoft. All rights reserved.
//

#import "UITextField+Extend.h"
#import "Configuration.h"

@implementation UITextField (Extend)

#pragma mark - Create Number UITextField

+ (UITextField *)textFieldByNumberWithFrame:(CGRect)frame {
    return [self textFieldByNumberWithFrame:frame placeholder:kNumberPlaceholder];
}

+ (UITextField *)textFieldByNumberWithFrame:(CGRect)frame placeholder:(NSString *)placeholder {
    return [self textFieldByNumberWithFrame:frame placeholder:placeholder textAlignment:kTextFieldTextAlignment];
}

+ (UITextField *)textFieldByNumberWithFrame:(CGRect)frame placeholder:(NSString *)placeholder textAlignment:(NSTextAlignment)textAlignment {
    return [self textFieldByNumberWithFrame:frame placeholder:placeholder font:kTextFieldFont textColor:kTextFieldTextColor textAlignment:textAlignment];
}

+ (UITextField *)textFieldByNumberWithFrame:(CGRect)frame placeholder:(NSString *)placeholder textAlignment:(NSTextAlignment)textAlignment textColor:(UIColor *)textColor{
    return [self textFieldByNumberWithFrame:frame placeholder:placeholder font:kTextFieldFont textColor:textColor textAlignment:textAlignment];
}

+ (UITextField *)textFieldByNumberWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment {
    return [self textFieldWithFrame:frame placeholder:placeholder font:font textColor:textColor textAlignment:textAlignment keyboardType:UIKeyboardTypeNumberPad];
}

#pragma mark - Create Text UITextField

+ (UITextField *)textFieldByTextWithFrame:(CGRect)frame {
    return [self textFieldByTextWithFrame:frame placeholder:kTextPlaceholder];
}

+ (UITextField *)textFieldByTextWithFrame:(CGRect)frame placeholder:(NSString *)placeholder {
    return [self textFieldByTextWithFrame:frame placeholder:placeholder textAlignment:kTextFieldTextAlignment];
}

+ (UITextField *)textFieldByTextWithFrame:(CGRect)frame placeholder:(NSString *)placeholder textAlignment:(NSTextAlignment)textAlignment {
    return [self textFieldByTextWithFrame:frame placeholder:placeholder font:kTextFieldFont textColor:kTextFieldTextColor textAlignment:textAlignment];
}

+ (UITextField *)textFieldByTextWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment {
    return [self textFieldWithFrame:frame placeholder:placeholder font:font textColor:textColor textAlignment:textAlignment keyboardType:UIKeyboardTypeDefault];
}

#pragma mark - Create UITextField

+ (UITextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment keyboardType:(UIKeyboardType)keyboardType {
    UITextField *textField = [[UITextField alloc] initWithFrame:frame];
    textField.placeholder = placeholder;
    textField.font = font;
    textField.textColor = textColor;
    textField.textAlignment = textAlignment;
    textField.keyboardType = keyboardType;
    textField.autocorrectionType = UITextAutocorrectionTypeNo;
    textField.autocapitalizationType = UITextAutocapitalizationTypeNone;
    textField.clearButtonMode = UITextFieldViewModeWhileEditing;
    textField.returnKeyType = UIReturnKeyDone;
    
    return textField;
}

@end
