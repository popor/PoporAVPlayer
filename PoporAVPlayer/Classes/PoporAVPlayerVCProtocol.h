//
//  PoporAVPlayerVCProtocol.h
//  linRunShengPi
//
//  Created by popor on 2018/1/20.
//  Copyright © 2018年 popor. All rights reserved.

#import <Foundation/Foundation.h>

#import <AVFoundation/AVFoundation.h>

#import "PoporAVPlayerTimeIndicatorView.h"
#import "PoporAVPlayerPrifix.h"

#import "PoporAVPlayerlayer.h"
#import <PoporOrientation/PoporOrientation.h>
#import <PoporFoundation/BlockMacroDefines.h>


// 对外接口
@protocol PoporAVPlayerVCProtocol <NSObject>

// MARK: viper auto code
//- (int)getViewCode;

- (UIViewController *)vc;
- (void)setMyPresent:(id)present;

@property (nonatomic, strong) AVPlayer * avPlayer;
@property (nonatomic, strong) PoporAVPlayerlayer * PoporAVPlayerlayer;

// UI
@property (nonatomic, strong) UIView         *topBar;
@property (nonatomic, strong) UIButton       *backButton;/// 返回按钮
@property (nonatomic, strong) UILabel        *titleLabel;/// 标题

@property (nonatomic, strong) UIView         *bottomBar;
@property (nonatomic, strong) UIButton       *playButton;
@property (nonatomic, strong) UISlider       *progressSlider;
@property (nonatomic, strong) UIProgressView *bufferProgressView;/// 缓冲进度条
@property (nonatomic, strong) UILabel        *timeLabel;
@property (nonatomic, strong) UIButton       *rotateButton; // 视频旋转按钮

@property (nonatomic, strong) NSURL          *videoURL;
@property (nonatomic        ) NSInteger      startTick;// 开始播放视频的时间

@property (nonatomic, strong) PoporAVPlayerTimeIndicatorView      *timeIndicatorView;/// 快进、快退指示器

@property (nonatomic, copy  ) BlockPVoid    willAppearBlock;
@property (nonatomic, copy  ) BlockPVoid    willDisappearBlock;



@end