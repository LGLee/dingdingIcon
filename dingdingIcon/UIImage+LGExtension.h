//
//  UIImage+LGExtension.h
//  dingdingIcon
//
//  Created by lingo on 2017/2/28.
//  Copyright © 2017年 livefor. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (LGExtension)
//生成一张圆形图片
- (UIImage *)circleImage;
/*
 * 生成一张如钉钉头像的图片
 * text  文字
 * 背景色
 * 上下文的size
 */
+ (UIImage *)circleImageWithText:(NSString *)text bgColor:(UIColor *)bgColor size:(CGSize)size;

/**
 生成一张倒三角的图片
 
 @param size context的大小
 @param tintColor 颜色
 @return 生成的图片
 */
+ (UIImage *)triangleImageWithSize:(CGSize)size tintColor:(UIColor *)tintColor;
@end
