//
//  Screen.swift
//  CCSize_Example
//
//  Created by 周日朝 on 2020/4/16.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit

public enum ScreenOrientation {
    case landscape  // 横屏
    case portrait   // 竖屏
}

public struct Screen {
    
    // 屏幕方向
    public static let orientation: ScreenOrientation = UIApplication.shared.statusBarOrientation.isLandscape ? ScreenOrientation.landscape : ScreenOrientation.portrait
    
    // 屏幕宽度
    public static let width: CGFloat = UIScreen.main.bounds.size.width
    
    // 设备宽度
    public static let deviceWidth: CGFloat = orientation == ScreenOrientation.landscape ? UIScreen.main.bounds.size.height : UIScreen.main.bounds.size.width
    
    // 屏幕高度
    public static let height: CGFloat = UIScreen.main.bounds.size.height
    
    // 设备高度
    public static let deviceHeight: CGFloat = orientation == ScreenOrientation.landscape ? UIScreen.main.bounds.size.width : UIScreen.main.bounds.size.height
    
    // 是否全面屏
    public static let isFullScreenIPhone: Bool = (is58InIPhone || is61InIPhone || is65InIPhone)
    
    // 是否为5.8英寸iPhone
    private static let is58InIPhone: Bool = (deviceWidth == sizeFor58Inch().width && deviceHeight == sizeFor58Inch().height)
    
    // 是否为6.1英寸iPhone
    private static let is61InIPhone: Bool = (deviceWidth == sizeFor61Inch().width && deviceHeight == sizeFor61Inch().height && UIScreen.main.scale == 2)
    
    // 是否为6.5英寸iPhone
    private static let is65InIPhone: Bool = (deviceWidth == sizeFor65Inch().width && deviceHeight == sizeFor65Inch().height && UIScreen.main.scale == 3)
    
    /// size of iPhone X/XS/11 Pro
    private static func sizeFor58Inch() -> CGSize {
        return CGSize(width: 375, height: 812)
    }

    /// size of iPhone XR/11
    private static func sizeFor61Inch() -> CGSize {
        return CGSize(width: 414, height: 896)
    }

    /// size of iPhone XS Max/11 Pro Max
    private static func sizeFor65Inch() -> CGSize {
        return CGSize(width: 414, height: 896)
    }
}

public struct HomeButton {
    public static let height = Screen.isFullScreenIPhone ? 34 : 0
}

public struct TabBar {
    public static let height = Screen.isFullScreenIPhone ? 83 : 49
}

public struct StatusBar {
    public static let height = Screen.isFullScreenIPhone ? 44 : 20
}

public struct NavBar {
    // 含电池栏的高度
    public static let height = StatusBar.height + 44
}

/// distance for size in 414pt width device
/// - Parameter n: origin distance
/// - Returns: real device distance
public func CCFloat(_ n: CGFloat) -> CGFloat {
    let scale = 414 / Screen.deviceWidth
    return n / scale
}

/// rect for size in 414pt width device
/// - Parameters:
///   - x: origin x
///   - y: origin y
///   - width: width of size
///   - height: height of size
public func CCRect(x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat) -> CGRect {
    return CGRect(x: CCFloat(x), y: CCFloat(y), width: CCFloat(width), height: CCFloat(height))
}
