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
        
        do {
            let label = UILabel()
            label.numberOfLines = 0
            label.textColor = .blue
            label.frame = view.frame
            label.textAlignment = .center
            label.text = """
            本页 Swift demo
            
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
            view.addSubview(label)
        }
        
        do {
            let btn = UIButton()
            btn.backgroundColor = .orange
            btn.setTitle("下一页Objc Demo", for: .normal)
            btn.titleLabel?.font = UIFont.systemFont(ofSize: 15)
            btn.frame = CGRect(x: Screen.width * 0.5 - 75.0, y: Screen.height - HomeButton.height - 64.0, width: 150.0, height: 44.0)
            btn.addTarget(self, action: #selector(click), for: .touchUpInside)
            view.addSubview(btn)
        }
    }
    
    @objc func click() {
        let vc = AnotherViewController()
        present(vc, animated: true, completion: nil)
    }
}

