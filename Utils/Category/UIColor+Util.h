//
//  UIColor+Util.h
//  ProjectApp
//
//  Created by wangzhen on 15/9/29.
//  Copyright (c) 2015年 WZ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Util)

+ (UIColor *)colorWithHex:(int)hexValue alpha:(CGFloat)alpha;

+ (UIColor *)colorWithHex:(int)hexValue;

@end
