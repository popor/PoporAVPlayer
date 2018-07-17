#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "AVPlayerPrifix.h"
#import "AVPlayerVC.h"
#import "AVPlayerVCDataSource.h"
#import "AVPlayerVCEventHandler.h"
#import "AVPlayerVCInteractor.h"
#import "AVPlayerVCPresenter.h"
#import "AVPlayerVCProtocol.h"
#import "AVPlayerVCRouter.h"
#import "PoporAVPlayerBundle.h"
#import "AVCustomePlayerlayer.h"
#import "AVPlayerTimeIndicatorView.h"

FOUNDATION_EXPORT double PoporAVPlayerVersionNumber;
FOUNDATION_EXPORT const unsigned char PoporAVPlayerVersionString[];

