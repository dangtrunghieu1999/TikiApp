//
//  Theme.swift
//  TikiApp
//
//  Created by admin on 7/23/19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

public final class Theme {
    public static var shared = Theme()
    
    private init() {
    }
    
    public var defaultBackground: UIColor {
        return UIColor.white
    }
    
    // MARK: - Color
    
    var barTintColor: UIColor {
        return UIColor(red: 31/255.0, green: 167/255.0, blue: 251/255.0, alpha: 100)
    }
    
    var containerViewColor: UIColor {
        return UIColor(red: 253/255, green: 248/255, blue: 227/255, alpha: 100)
    }
    
    var chooseButtonColor: UIColor {
        return UIColor(red: 242/255, green: 73/255, blue: 78/255, alpha: 100)
    }
    
    var changeButtonColor: UIColor {
        return UIColor(red: 31/255.0, green: 167/255.0, blue: 251/255.0, alpha: 100)
    }
    
    
    var lineViewColor: UIColor {
        return UIColor(red: 238/255.0, green: 238/255.0, blue: 238/255.0, alpha: 100)
    }
    
}
