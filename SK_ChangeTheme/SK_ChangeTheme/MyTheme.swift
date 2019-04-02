//
//  MyTheme.swift
//  SK_ChangeTheme
//
//  Created by coder on 2019/4/2.
//  Copyright © 2019 AlexanderYeah. All rights reserved.
//

import Foundation

import SwiftTheme

// 创建一个枚举类型进行换肤
enum ChangeTheme:Int {
    
    case theme1 = 0;
    case theme2 = 1;
    case theme3 = 2;
    

    // 创建一个静态方法去换肤 去加载本地的plist文件
    static func swiftTheme(_ theme:ChangeTheme){
        switch theme {
            case .theme1:
                // 加载第一套主题文件
                ThemeManager.setTheme(plistName: "theme1", path: .mainBundle);
            case .theme2:
                ThemeManager.setTheme(plistName: "theme2", path: .mainBundle);
            case .theme3:
                ThemeManager.setTheme(plistName: "theme3", path: .mainBundle);
        }
    }
    
}



