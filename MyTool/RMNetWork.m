//
//  RMNetWork.m
//  zhongce
//
//  Created by Apple on 16/6/9.
//  Copyright © 2016年 fuwenwen. All rights reserved.
//

#import "RMNetWork.h"
#import "Reachability.h"


@implementation RMNetWork

//genggai
- (BOOL)rechability
{
    Reachability *r = [Reachability reachabilityWithHostName:@"www.baidu.com"];
    switch ([r currentReachabilityStatus]) {
        case NotReachable: // 没有网络连接
            RMLog(@"没有网络连接");
            return NO;
            break;
        case ReachableViaWWAN: // 使用3G网络
            // 开始网络请求解析
            RMLog(@"使用3g网络");
            return YES;
            break;
        case ReachableViaWiFi: // 使用WiFi网络
            // 开始网络请求解析
            RMLog(@"使用wifi网络");
            return YES;
            break;
    }
}

@end
