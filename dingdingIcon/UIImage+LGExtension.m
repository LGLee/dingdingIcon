//
//  UIImage+LGExtension.m
//  dingdingIcon
//
//  Created by lingo on 2017/2/28.
//  Copyright © 2017年 livefor. All rights reserved.
//

#import "UIImage+LGExtension.h"

@implementation UIImage (LGExtension)

- (UIImage *)circleImage{
    
    UIGraphicsBeginImageContextWithOptions(self.size,NO, 0);
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGRect rect = CGRectMake(0, 0, self.size.width, self.size.height);
    
    CGContextAddEllipseInRect(ctx, rect);
    
    CGContextClip(ctx);
    
    [self drawInRect:rect];
    
    UIImage *circleImage =  UIGraphicsGetImageFromCurrentImageContext();
 
    UIGraphicsEndImageContext();
    
    return circleImage;
}

+ (UIImage *)circleImageWithText:(NSString *)text bgColor:(UIColor *)bgColor size:(CGSize)size{
    NSDictionary *fontAttributes = @{NSFontAttributeName: [UIFont systemFontOfSize:30], NSForegroundColorAttributeName: [UIColor whiteColor]};
    
    CGSize textSize = [text sizeWithAttributes:fontAttributes];
    
    CGPoint drawPoint = CGPointMake((size.width - textSize.width)/2, (size.height - textSize.height)/2);
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0);
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, size.width, size.height)];
    
    CGContextSetFillColorWithColor(ctx, bgColor.CGColor);
    
    [path fill];
    
    [text drawAtPoint:drawPoint withAttributes:fontAttributes];
    
    UIImage *resultImg = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();

    return resultImg;
}

+ (UIImage *)triangleImageWithSize:(CGSize)size tintColor:(UIColor *)tintColor{
    UIGraphicsBeginImageContextWithOptions(size, NO, 0);
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(0, 0)];
    [path addLineToPoint:CGPointMake(size.width/2,size.height)];
    [path addLineToPoint:CGPointMake(size.width, 0)];
    [path closePath];
    CGContextSetFillColorWithColor(ctx, tintColor.CGColor);
    [path fill];
    UIImage *resultImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return resultImage;
}

@end
