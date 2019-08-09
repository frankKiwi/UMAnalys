//
//  UMHandler.m
//  JblTransport
//
//  Created by LWW on 2019/8/8.
//  Copyright © 2019 LWW. All rights reserved.
//

#import "UMHandler.h"
#import <UMAnalytics/MobClick.h>

@implementation UMHandler
+(UMHandler *)sharedInstance
{
    static UMHandler *_sharedInstance = nil;
    static dispatch_once_t oncePredicate;
    dispatch_once(&oncePredicate, ^{
        _sharedInstance = [[UMHandler alloc] init];
    });
    return _sharedInstance;
}

+ (void)PageAnalaysBegain:(UIViewController*)vc{
    [MobClick beginLogPageView:vc.className];
}
+ (void)PageAnalaysEnd:(UIViewController*)vc{
    [MobClick endLogPageView:vc.className];
}
+(void)eventVideoTabAnalys{
    static NSInteger count = 0;
    count++;
    [MobClick event:@"ManTab" attributes:@{@"tap" : @"视频主页按钮点击次数"} counter:(int)count];
}
+(void)eventVideoGameDownLoadTaps:(NSInteger)gameId andGameName:(NSString*)gameName{
    static NSInteger count = 0;
    count++;
    [MobClick event:@"eventVideoGameDownLoadTaps" attributes:@{@"tap" : @"视频页面下载按钮点击次数",@"gameName":gameName,@"gameId":[NSString stringWithFormat:@"%ld",(long)gameId]} counter:(int)count];
}
+(void)eventVideoGameInstalls:(NSInteger)gameId andGameName:(NSString*)gameName{
    static NSInteger count = 0;
    count++;
    [MobClick event:@"eventVideoGameInstalls" attributes:@{@"tap" : @"视频页面下载安装次数",@"gameName":gameName,@"gameId":[NSString stringWithFormat:@"%ld",(long)gameId]} counter:(int)count];
}

@end
