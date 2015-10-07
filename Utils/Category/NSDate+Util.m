//
//  NSDate+Util.m
//  ProjectApp
//
//  Created by wangzhen on 15/10/7.
//  Copyright (c) 2015年 WZ. All rights reserved.
//

#import "NSDate+Util.h"

@implementation NSDate (Util)

+ (NSDictionary *)timeIntervalArrayFromString:(NSString *)dateStr
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSDate *date = [dateFormatter dateFromString:dateStr];
    
    NSUInteger unitFlags = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute;
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDateComponents *compsPast = [calendar components:unitFlags fromDate:date];
    NSDateComponents *compsNow = [calendar components:unitFlags fromDate:[NSDate date]];
    
    NSInteger daysInLastMonth = [calendar rangeOfUnit:NSDayCalendarUnit
                                               inUnit:NSMonthCalendarUnit
                                              forDate:date].length;
    
    NSInteger years = [compsNow year] - [compsPast year];
    NSInteger months = [compsNow month] - [compsPast month] + years * 12;
    NSInteger days = [compsNow day] - [compsPast day] + months * daysInLastMonth;
    NSInteger hours = [compsNow hour] - [compsPast hour] + days * 24;
    NSInteger minutes = [compsNow minute] - [compsPast minute] + hours * 60;
    
    return @{
             kKeyYears:  @(years),
             kKeyMonths: @(months),
             kKeyDays:   @(days),
             kKeyHours:  @(hours),
             kKeyMinutes:@(minutes)
             };
}


+ (NSDateComponents *)getDateComponentsFromDate:(NSDate *)date
{
    NSUInteger unitFlags = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitWeekOfYear | NSCalendarUnitWeekday |
    NSCalendarUnitDay  | NSCalendarUnitHour  | NSCalendarUnitMinute;
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    return [calendar components:unitFlags fromDate:date];
}


+ (NSString *)getWeekdayFromDateComponents:(NSDateComponents *)dateComps
{
    switch (dateComps.weekday) {
        case 1: return @"星期天";
        case 2: return @"星期一";
        case 3: return @"星期二";
        case 4: return @"星期三";
        case 5: return @"星期四";
        case 6: return @"星期五";
        case 7: return @"星期六";
        default: return @"";
    }
}

@end
