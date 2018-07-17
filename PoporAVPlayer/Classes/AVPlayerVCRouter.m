//
//  AVPlayerVCRouter.m
//  linRunShengPi
//
//  Created by popor on 2018/1/20.
//  Copyright © 2018年 popor. All rights reserved.

#import "AVPlayerVCRouter.h"
#import "AVPlayerVCPresenter.h"
#import "AVPlayerVC.h"

@implementation AVPlayerVCRouter

+ (UIViewController *)vcWithDic:(NSDictionary *)dic {
    AVPlayerVC * vc = [[AVPlayerVC alloc] initWithDic:dic];
    AVPlayerVCPresenter * present = [AVPlayerVCPresenter new];
    
    [vc setMyPresent:present];
    [present setMyView:vc];
    
    return vc;
}

+ (void)setVCPresent:(UIViewController *)vc {
    if ([vc isKindOfClass:[AVPlayerVC class]]) {
        AVPlayerVC * oneVC = (AVPlayerVC *)vc;
        AVPlayerVCPresenter * present = [AVPlayerVCPresenter new];
        
        [oneVC setMyPresent:present];
        [present setMyView:oneVC];
    }
}

@end
