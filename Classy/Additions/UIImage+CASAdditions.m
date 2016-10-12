//
//  UIImage+CASAdditions.m
//  Classy
//
//  Created by Peyman Khanjan on 12/10/2016.
//  Copyright © 2016 Zeta Project Berlin Gmbh. All rights reserved.
//

#import "UIImage+CASAdditions.h"

@implementation UIImage (CASAdditions)
- (UIImage *)tintedWithColor:(UIColor *)tintColor
{
    UIGraphicsBeginImageContextWithOptions(self.size, NO, [[UIScreen mainScreen] scale]);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextTranslateCTM(context, 0, self.size.height);
    CGContextScaleCTM(context, 1.0, -1.0);
    
    CGRect rect = CGRectMake(0, 0, self.size.width, self.size.height);
    
    // draw alpha-mask
    CGContextSetBlendMode(context, kCGBlendModeNormal);
    CGContextDrawImage(context, rect, self.CGImage);
    
    // draw tint color, preserving alpha values of original image
    CGContextSetBlendMode(context, kCGBlendModeSourceIn);
    [tintColor setFill];
    CGContextFillRect(context, rect);
    
    UIImage *retVal = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return retVal;
}

@end
