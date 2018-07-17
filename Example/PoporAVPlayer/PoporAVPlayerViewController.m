//
//  PoporAVPlayerViewController.m
//  PoporAVPlayer
//
//  Created by popor on 07/17/2018.
//  Copyright (c) 2018 popor. All rights reserved.
//

#import "PoporAVPlayerViewController.h"

#import <PoporAVPlayer/PoporAVPlayerVCRouter.h>

@interface PoporAVPlayerViewController ()

@end

@implementation PoporAVPlayerViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
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
}


- (void)playVideoAction {
    NSString *videoPath = [[NSBundle mainBundle] pathForResource:@"douyin" ofType:@"mp4"];
    NSURL * videoURL    = [NSURL fileURLWithPath:videoPath];
    
    [self.navigationController pushViewController:[PoporAVPlayerVCRouter vcWithDic:@{@"title":@"升降桌", @"videoURL":videoURL}] animated:YES];
}

@end
