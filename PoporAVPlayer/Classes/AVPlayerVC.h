//
//  AVPlayerVC.h
//  linRunShengPi
//
//  Created by popor on 2018/1/20.
//  Copyright © 2018年 popor. All rights reserved.

#import <UIKit/UIKit.h>
#import "AVPlayerVCEventHandler.h"
#import "AVPlayerVCDataSource.h"
#import "AVPlayerVCProtocol.h"

@interface AVPlayerVC : UIViewController <AVPlayerVCProtocol>

- (instancetype)initWithDic:(NSDictionary *)dic;

@end
