//
//  ViewController.swift
//  CCSize
//
//  Created by RachalZhou on 04/15/2020.
//  Copyright (c) 2020 RachalZhou. All rights reserved.
//

import UIKit
import CCSize

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel()
        label.numberOfLines = 0
        label.textColor = .black
        label.textAlignment = .center
        label.text = """
        屏幕宽度：\(Screen.width)
        设备宽度：\(Screen.deviceWidth)
        
        屏幕高度：\(Screen.height)
        设备高度：\(Screen.deviceHeight)
        
        电池栏高度：\(StatusBar.height)
        导航栏高度：\(NavBar.height)
        
        Home键高度：\(HomeButton.height)
        TabBar高度：\(TabBar.height)
        
        是否全面屏iPhone：\(Screen.isFullScreenIPhone ? "是":"否")
        
        实际长度：\(CCFloat(414))
"""
        label.frame = view.frame
        view.addSubview(label)
    }
}

