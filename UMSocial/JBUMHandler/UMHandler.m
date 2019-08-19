//
//  UMHandler.m
//  JblTransport
//
//  Created by LWW on 2019/8/8.
//  Copyright © 2019 LWW. All rights reserved.
//

#import "UMHandler.h"
#import <UMAnalytics/MobClick.h>
static NSString *umKey = @"5d4bd4ec570df311b000067b";
static NSString*umChannel = @"adhoc";

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
+ (void)initUM{
    [UMConfigure initWithAppkey:umKey channel:umChannel];
}

+(void)eventVideoTabAnalys{
    static NSInteger count = 0;
    count++;
    [MobClick event:@"ManTab" attributes:@{@"tap" : @"视频主页按钮点击次数"} counter:(int)count];
}


@end
