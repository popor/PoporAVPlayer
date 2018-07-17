//
//  AVPlayerVCPresenter.h
//  linRunShengPi
//
//  Created by popor on 2018/1/20.
//  Copyright © 2018年 popor. All rights reserved.

#import <Foundation/Foundation.h>
#import "AVPlayerVCEventHandler.h"
#import "AVPlayerVCDataSource.h"

// 处理和View事件
@interface AVPlayerVCPresenter : NSObject <AVPlayerVCEventHandler, AVPlayerVCDataSource>

- (void)setMyView:(id)view;
- (void)initInteractors;

@end
