//
//  UMHandler.h
//  JblTransport
//
//  Created by LWW on 2019/8/8.
//  Copyright © 2019 LWW. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UMHandler : NSObject
+(UMHandler *)sharedInstance;
///***  开始统计页面 */
//+ (void)PageAnalaysBegain:(UIViewController*)vc;
///***  结束统计页面 */
//+ (void)PageAnalaysEnd:(UIViewController*)vc;
///***  视频页面tab点击 */
//+(void)eventVideoTabAnalys;

@end

NS_ASSUME_NONNULL_END
