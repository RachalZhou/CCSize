//
//  AnotherViewController.m
//  CCSize_Example
//
//  Created by 周日朝 on 2020/4/17.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

#import "AnotherViewController.h"
#import <CCSize.h>

@interface AnotherViewController ()

@end

@implementation AnotherViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    {
        UILabel *label = [[UILabel alloc] init];
        label.numberOfLines = 0;
        label.textColor = [UIColor orangeColor];
        label.frame = self.view.frame;
        label.textAlignment = NSTextAlignmentCenter;
        NSString *str = isFullScreenIPhone ? @"是" : @"否";
        CGFloat len = CCFloat(414);
        label.text = [NSString stringWithFormat:@"本页Objc demo\n\n屏幕宽度%.1f\n设备宽度%.1f\n\n屏幕度高.%.1f\n设备高度%.1f\n\n电池栏高度：%.1f\n导航栏高度：%.1f\n\n是否全面屏：%@\n\n实际尺寸：%.1f", ScreenWidth, DeviceWidth, ScreenHeight, DeviceHeight, StatusBarHeight, NavBarHeight, str, len];
        [self.view addSubview:label];
    }
    
    {
        UIButton *btn = [[UIButton alloc] init];
        btn.backgroundColor = [UIColor blueColor];
        [btn setTitle:@"上一页" forState:UIControlStateNormal];
        btn.titleLabel.font = [UIFont systemFontOfSize:15];
        btn.frame = CGRectMake(ScreenWidth * 0.5 - 30.0, ScreenHeight - HomeButtonHeight - 90.0, 60, 44);
        [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:btn];
    }
}

- (void)click {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
