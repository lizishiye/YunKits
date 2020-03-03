//
// Created by yun on 2019-01-22.
// Copyright (c) 2019 yun. All rights reserved.
//

#import "YunSchemesHelper.h"

@interface YunSchemesHelper () {
}

@end

@implementation YunSchemesHelper

+ (void)callWeChat {
    if ([self isWeChatInstalled]) {
        NSString *weChatUrl = [NSString stringWithFormat:@"weixin://"];
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:weChatUrl]];
    }
}

+ (BOOL)isWeChatInstalled {
    NSString *urlStr = [NSString stringWithFormat:@"weixin://"];
    NSURL *url = [NSURL URLWithString:urlStr];
    if ([[UIApplication sharedApplication] canOpenURL:url]) {
        return YES;
    }
    else {
        return NO;
    }
}

@end
