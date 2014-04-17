//
//  ViewController.h
//  视频播放器
//
//  Created by 凌雪峰 on 13-9-17.
//  Copyright (c) 2013年 Stefen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) MPMoviePlayerViewController *mpMoviePlayerViewController;  //注意，在现在的版本中，只能使用MPMoviePlayerViewController，而不能使用MPMoviePlayerController

@end
