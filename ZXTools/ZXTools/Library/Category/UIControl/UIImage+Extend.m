//
//  UIImage+Extend.m
//  BCMSystem
//
//  Created by ccg on 14-4-15.
//  Copyright (c) 2014年 mobisoft. All rights reserved.
//

#import "UIImage+Extend.h"

@implementation UIImage (Extend)

#pragma mark - Create StretchImage

+ (UIImage *)stretchImageWithName:(NSString *)imageName {
   return [self stretchImageWithName:imageName xPos:0.5 yPos:0.5];
}

+ (UIImage *)stretchImageWithName:(NSString *)imageName xPos:(CGFloat)xPos yPos:(CGFloat)yPos {
    UIImage *image = [UIImage imageNamed:imageName];
    double imageWidth = image.size.width;
    double imageHeight = image.size.height;
    return [image stretchableImageWithLeftCapWidth:imageWidth * xPos topCapHeight:imageHeight * yPos];
}

#pragma mark - ScreenShot Image

+ (UIImage *)screenshotWithView:(UIView *)view shotSize:(CGSize)shotSize
{
    UIGraphicsBeginImageContext(shotSize);
    [view.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
