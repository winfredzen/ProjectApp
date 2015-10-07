//
//  NSDate+Util.h
//  ProjectApp
//
//  Created by wangzhen on 15/10/7.
//  Copyright (c) 2015年 WZ. All rights reserved.
//

#import <Foundation/Foundation.h>

static NSString * const kKeyYears = @"years";
static NSString * const kKeyMonths = @"months";
static NSString * const kKeyDays = @"days";
static NSString * const kKeyHours = @"hours";
static NSString * const kKeyMinutes = @"minutes";

@interface NSDate (Util)

/**
 *  计算dateStr代表的日期与当前date的时间差
 *
 *  @param dateStr 日期字符串
 *
 *  @return 时间差字典
 */
+ (NSDictionary *)timeIntervalArrayFromString:(NSString *)dateStr;

/**
 *  获取date的组成部分
 *
 *  @param date 日期
 *
 *  @return NSDateComponents
 */
+ (NSDateComponents *)getDateComponentsFromDate:(NSDate *)date;

/**
 *  获取星期
 *
 *  @param dateComps NSDateComponents
 *
 *  @return 星期字符串
 */
+ (NSString *)getWeekdayFromDateComponents:(NSDateComponents *)dateComps;

@end
