//
//  PoporAVPlayerViewController.m
//  PoporAVPlayer
//
//  Created by popor on 07/17/2018.
//  Copyright (c) 2018 popor. All rights reserved.
//

#import "PoporAVPlayerViewController.h"

#import <PoporAVPlayer/PoporAVPlayerVC.h>

@interface PoporAVPlayerViewController ()

@end

@implementation PoporAVPlayerViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.navigationController.interactivePopGestureRecognizer.delegate = self;
    
    self.title = @"视频播放";
    UIButton * oneBT = ({
        UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame =  CGRectMake(100, 100, 80, 44);
        [button setTitle:@"play" forState:UIControlStateNormal];
        [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [button setBackgroundColor:[UIColor brownColor]];
        
        button.layer.cornerRadius = 5;
        button.layer.borderColor = [UIColor lightGrayColor].CGColor;
        button.layer.borderWidth = 1;
        button.clipsToBounds = YES;
        
        [self.view addSubview:button];
        
        [button addTarget:self action:@selector(playVideoAction) forControlEvents:UIControlEventTouchUpInside];
        button;
    });
    oneBT.center = CGPointMake(self.view.center.x, 120);
}


- (void)playVideoAction {
    NSString *videoPath = [[NSBundle mainBundle] pathForResource:@"douyin" ofType:@"mp4"];
    NSURL * videoURL    = [NSURL fileURLWithPath:videoPath];
    
    // http 需要开启plist: App Transport Security 配置.
    videoURL = [NSURL URLWithString:@"https://yiche-static.oss-cn-hangzhou.aliyuncs.com/anjie/uploads/video/20181009/88b3d738583bb6c6c00c0c5f19fc381a.mp4"];
    videoURL = [NSURL URLWithString:@"https://yiche-static.oss-cn-hangzhou.aliyuncs.com/anjie/uploads/video/20190214/441165a826254065a3ed5d64f776d2df.mp4"];
    
    NSDictionary * dic;
    dic = @{@"title":@"升降桌", @"videoURL":videoURL, @"showLockRotateBT":@(YES)};
    [self.navigationController pushViewController:[[PoporAVPlayerVC alloc]
                                                  initWithDic:dic] animated:YES];
}

@end
