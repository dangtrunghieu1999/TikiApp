//
//  Dimension.swift
//  TikiApp
//
//  Created by admin on 7/23/19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

public final class Dimension {
    public static var shared = Dimension()
    
    private init() {
    }
    
    // MARK: - Font Size
    
    var titleFont: UIFont {
        return UIFont.systemFont(ofSize: 17)
    }
    var smallTitleFont: UIFont {
        return UIFont.systemFont(ofSize: 15)
    }
    
    var priceFont: UIFont {
        return UIFont.systemFont(ofSize: 20, weight: .semibold)
    }
    var smallPriceFont: UIFont {
        return UIFont.systemFont(ofSize: 15, weight: .semibold)
    }
    
    var captionFont: UIFont {
        return UIFont.systemFont(ofSize: 13)
    }
    
    var captionFontSemiBold: UIFont {
        return UIFont.systemFont(ofSize: 13, weight: .semibold)
    }
    
    
    // MARK: - Button
    
    var titleButtonFont: UIFont {
        return UIFont.systemFont(ofSize: 16)
    }
    
    var captionButtonFont: UIFont {
        return UIFont.systemFont(ofSize: 13)
    }
    
    // MARK: - Spacing
    
    var smallHorizontalMargin: CGFloat {
        return 4
    }
    
    var smallVerticalMargin: CGFloat {
        return 4
    }
    
    var mediumHorizontalMargin: CGFloat {
        return 10
    }
    
    var mediumVerticalMargin: CGFloat {
        return 10
    }
    
    var normalHorizontalMargin: CGFloat {
        return 12
    }
    
    var normalVerticalMargin: CGFloat {
        return 12
    }
    
    var largeHorizontalMargin: CGFloat {
        return 15
    }
    
    var largeVerticalMargin: CGFloat {
        return 15
    }
    
    var largeHorizontalMargin_25: CGFloat {
        return 25
    }
    
    var largeVerticalMargin_25: CGFloat {
        return 25
    }
    
    
}
