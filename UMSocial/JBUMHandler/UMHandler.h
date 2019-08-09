//
//  UMHandler.h
//  JblTransport
//
//  Created by LWW on 2019/8/8.
//  Copyright © 2019 LWW. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface UMHandler : NSObject
+(UMHandler *)sharedInstance;
/***  开始统计页面 */
+ (void)PageAnalaysBegain:(UIViewController*)vc;
/***  结束统计页面 */
+ (void)PageAnalaysEnd:(UIViewController*)vc;
/***  视频页面tab点击 */
+(void)eventVideoTabAnalys;
/***  视频页面下载点击事件次数 */
+(void)eventVideoGameDownLoadTaps:(NSInteger)gameId andGameName:(NSString*)gameName;
/***  视频页面下载安装次数 */
+(void)eventVideoGameInstalls:(NSInteger)gameId andGameName:(NSString*)gameName;
@end

NS_ASSUME_NONNULL_END
