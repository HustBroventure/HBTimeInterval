//
//  TimeTEst.m
//  时间间隔的显示提示
//
//  Created by wangfeng on 15/10/21.
//  Copyright (c) 2015年 HustBroventure. All rights reserved.
//

#import "TimeTEst.h"

@implementation TimeTEst


-(NSString*)getTimeInfoWithLastDate:(NSDate*)lastDate
{
        //   x <= 30s 显示 刚刚
        // 60 > X >30s 显示 X秒前
        // 3600 >= x > 60  X分钟前
        // 3600 * 24 >= x > 3600 X小时前
        //  3600 * 24 * 365 >=x > 3600 * 24  月 日 时 分
        //   x > 3600 * 24 * 365    年 月 日 时 分
    NSString* info = @"";
    NSTimeInterval lastTime = [lastDate timeIntervalSinceNow];
    long t = (long)-lastTime;
    if(t <= 30){
        info = @"刚刚刷新";
    }else if(t < 60){
        info = [NSString stringWithFormat:@"%ld秒前刷新",t];
    }else if(t < 3600){
        
        info = [NSString stringWithFormat:@"%ld分钟前刷新",t / 60];
    }
    else if(t < 3600 * 24){
        info = [NSString stringWithFormat:@"%ld小时前刷新",t / 3600];
    }
    else if(t < 3600 * 24  * 7){
        info = [NSString stringWithFormat:@"%ld天前刷新",t /(3600 * 24)];
    }
    else if(t < 3600 * 24 * 365){
        NSDateFormatter* formatter  = [[NSDateFormatter alloc]init];
        formatter.dateFormat = @"MM-dd HH:mm";
        NSString *time = [formatter stringFromDate:lastDate];
        info =  [NSString stringWithFormat:@"%@刷新", time];
       
    }else{
        NSDateFormatter* formatter  = [[NSDateFormatter alloc]init];
        formatter.dateFormat =@"yyyy-MM-dd HH:mm";;
        NSString *time = [formatter stringFromDate:lastDate];
        info =  [NSString stringWithFormat:@"%@刷新", time];
    }
    
    return info;
}
@end
