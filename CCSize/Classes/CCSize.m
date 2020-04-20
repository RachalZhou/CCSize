//
//  CCSize.m
//  CCSize_Example
//
//  Created by 周日朝 on 2020/4/17.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

#import "CCSize.h"

@implementation CCSize

// 当前是否全面屏
+ (BOOL)isThisFullScreenIPhone {
    return ([self is58InIPhone] || [self is61InIPhone] || [self is65InIPhone]);
}

// 是否为5.8英寸iPhone
+ (BOOL)is58InIPhone {
    CGSize size = [CCSize sizeFor58Inch];
    return (DeviceWidth == size.width && DeviceHeight == size.height);
}

// 是否为6.1英寸iPhone
+ (BOOL)is61InIPhone {
    CGSize size = [CCSize sizeFor61Inch];
    NSInteger scale = [UIScreen mainScreen].scale;
    return (DeviceWidth == size.width && DeviceHeight == size.height && scale == 2);
}

// 是否为6.5英寸iPhone
+ (BOOL)is65InIPhone {
    CGSize size = [CCSize sizeFor65Inch];
    NSInteger scale = [UIScreen mainScreen].scale;
    return (DeviceWidth == size.width && DeviceHeight == size.height && scale == 3);
}

// iPhone X/XS/11 Pro
+ (CGSize)sizeFor58Inch {
    return CGSizeMake(375.0, 812.0);
}

// iPhone XR/11
+ (CGSize)sizeFor61Inch {
    return CGSizeMake(414.0, 896.0);
}

// iPhone XS Max/11 Pro Max
+ (CGSize)sizeFor65Inch {
    return CGSizeMake(414.0, 896.0);
}

@end
