//
//  ViewController.m
//  视频播放器
//
//  Created by 凌雪峰 on 13-9-17.
//  Copyright (c) 2013年 Stefen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //1.创建路径资源，使用mainBundle
    NSString *videoPath = [[NSBundle mainBundle]pathForResource:@"droplet" ofType:@"mp4"];
    
    //2.将路径转换为URL，这个是必须的操作
    NSURL *videoURL = [[NSURL alloc]initFileURLWithPath:videoPath];
    
    //3.创建视频播放器
    _mpMoviePlayerViewController = [[MPMoviePlayerViewController alloc]initWithContentURL:videoURL];
    
    //4.将视频播放器添加到当前界面上并显示
    [self.view addSubview:self.mpMoviePlayerViewController.view];
    
    //5.向消息中心注册，监听播放器播放结束的事件
    //当播放器播放结束的消息发出后，会调用定制好的好的方法“- (void)videoPlayingFinish:(id)sender”
    
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(videoPlayingFinish:) name:@"MPMoviePlayerPlaybackDidFinishNotification" object:nil];
    //NSNotificationCenter是专门供程序中不同类间的消息通信而设置的
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//当视频播放器播放完成视频后，将回调该方法
- (void)videoPlayingFinish:(id)sender
{
    //关闭视频播放器
    [self.mpMoviePlayerViewController.view removeFromSuperview];
}

@end
