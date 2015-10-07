//
//  UIColor+Util.h
//  ProjectApp
//
//  Created by wangzhen on 15/9/29.
//  Copyright (c) 2015年 WZ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Util)

/**
 *  通过16进制数字和透明度值来创建颜色
 *
 *  @param hexValue 16进制数字
 *  @param alpha    透明度
 *
 *  @return 创建的颜色
 */
+ (UIColor *)colorWithHex:(int)hexValue alpha:(CGFloat)alpha;

/**
 *  通过16进制数字来创建颜色
 *
 *  @param hexValue 16进制数字
 *
 *  @return 创建的颜色
 */
+ (UIColor *)colorWithHex:(int)hexValue;

@end
