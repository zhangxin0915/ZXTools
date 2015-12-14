//
//  UIImage+Extend.h
//  BCMSystem
//
//  Created by ccg on 14-4-15.
//  Copyright (c) 2014年 mobisoft. All rights reserved.
//  UIImage分类扩展方法

#import <UIKit/UIKit.h>

@interface UIImage (Extend)

#pragma mark - Create StretchImage

/**
 *  @brief  创建默认拉伸的Image
 *
 *  @param
 *
 *  @return
 */
+ (UIImage *)stretchImageWithName:(NSString *)imageName;

/**
 *  @brief  创建自定义拉伸的Image
 *
 *  @param  xPos 拉伸点的x坐标占图片长度的比例
 *  @param  yPos 拉伸点的y坐标占图片高度的比例
 *
 *  @return
 */
+ (UIImage *)stretchImageWithName:(NSString *)imageName xPos:(CGFloat)xPos yPos:(CGFloat)yPos;

#pragma mark - ScreenShot Image

/**
  *  @brief  获取视图的截图
  *
  *  @param  view 需要截图的View
  *
  *  @return UIImage 截图
  */
+ (UIImage *)screenshotWithView:(UIView *)view shotSize:(CGSize)shotSize;

@end
