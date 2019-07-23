//
//  UINavigationBar+Extention.swift
//  TikiApp
//
//  Created by admin on 7/23/19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

public extension UINavigationBar {
    func setTransparent() {
        isTranslucent = true
        barStyle = .black
        shadowImage = UIImage()
    }
    
    func setNavigationBar() {
        isTranslucent = true
        barTintColor = .white
        shadowImage = UIImage()
    }
}
