//
//  CCSize.h
//  CCSize_Example
//
//  Created by 周日朝 on 2020/4/17.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, ScreenOrientation) {
    ScreenOrientationLandscape, // 横屏
    ScreenOrientationPortrait,  // 竖屏
};

// 屏幕方向
#define ScreenOrientation (UIInterfaceOrientationIsLandscape([[UIApplication sharedApplication] statusBarOrientation]) ? ScreenOrientationLandscape : ScreenOrientationPortrait)

// 屏幕宽度
#define ScreenWidth ([[UIScreen mainScreen] bounds].size.width)

// 屏幕高度
#define ScreenHeight ([[UIScreen mainScreen] bounds].size.height)

// 设备宽度
#define DeviceWidth (ScreenOrientation == ScreenOrientationLandscape ? [[UIScreen mainScreen] bounds].size.height : [[UIScreen mainScreen] bounds].size.width)

// 设备高度
#define DeviceHeight (ScreenOrientation == ScreenOrientationLandscape ? [[UIScreen mainScreen] bounds].size.width : [[UIScreen mainScreen] bounds].size.height)

// 是否全面屏
#define isFullScreenIPhone ([CCSize isThisFullScreenIPhone])

// Home键高度
#define HomeButtonHeight (isFullScreenIPhone ? 34.0 : 0.0)

// TabBar高度
#define TabBarHeight (isFullScreenIPhone ? 83.0 : 49.0)

// 电池栏高度
#define StatusBarHeight (isFullScreenIPhone ? 44.0 : 20.0)

// 导航栏高度（含电池栏）
#define NavBarHeight (StatusBarHeight + 44.0)


/// distance for size in 414pt width device
/// @param n origin distance
static inline CGFloat CCFloat(CGFloat n) {
    CGFloat scale = 414.0 / ScreenWidth;
    return n / scale;
}

/// rect for size in 414pt width device
static inline CGRect UIRectAdapter(x, y, width, height) {
    return CGRectMake(CCFloat(x), CCFloat(y), CCFloat(width), CCFloat(height));
}

@interface CCSize : NSObject

+ (BOOL)isThisFullScreenIPhone;

@end

NS_ASSUME_NONNULL_END
