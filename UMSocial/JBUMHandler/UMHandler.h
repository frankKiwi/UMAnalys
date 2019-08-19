//
//  UMHandler.h
//  JblTransport
//
//  Created by LWW on 2019/8/8.
//  Copyright © 2019 LWW. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <UMCommon/UMCommon.h>

NS_ASSUME_NONNULL_BEGIN

@interface UMHandler : NSObject

+(UMHandler *)sharedInstance;

+ (void)initUM;


@end

NS_ASSUME_NONNULL_END
