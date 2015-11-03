//
//  main.m
//  时间间隔的显示提示
//
//  Created by wangfeng on 15/10/21.
//  Copyright (c) 2015年 HustBroventure. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TimeTEst.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        TimeTEst* t = [TimeTEst new];
        NSDateFormatter * f = [[NSDateFormatter alloc]init];
        f.dateFormat = @"yyyy-MM-dd HH:mm:ss";
        NSDate* lastDate = [f dateFromString:@"2015-10-21 10:05:00"];
       NSString* info =  [t getTimeInfoWithLastDate:lastDate];
        NSLog(@"%@",info);
        
        
        
        
        
    }
    return 0;
}


