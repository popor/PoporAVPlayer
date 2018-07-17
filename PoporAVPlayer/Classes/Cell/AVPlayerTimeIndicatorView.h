//
//  AVPlayerTimeIndicatorView.h
//  linRunShengPi
//
//  Created by popor on 2018/1/20.
//  Copyright © 2018年 popor. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, AVPlayerTimeIndicatorPlayState) {
    AVPlayerTimeIndicatorRewind,      // rewind
    AVPlayerTimeIndicatorFastForward, // fast forward
};

static const CGFloat GLVideoTimeIndicatorViewSide = 96;

@interface AVPlayerTimeIndicatorView : UIView

@property (nonatomic, strong, readwrite) NSString *labelText;
@property (nonatomic, assign, readwrite) AVPlayerTimeIndicatorPlayState playState;

@end
