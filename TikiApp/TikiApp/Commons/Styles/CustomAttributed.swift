//
//  CustomAttributedString.swift
//  TikiApp
//
//  Created by admin on 7/23/19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

public class CustomAttributed {
    
    public static func lineSpacingText( _ text: String) -> NSMutableAttributedString {
        let attributedString = NSMutableAttributedString(string: text)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 3
        attributedString.addAttribute(NSAttributedString.Key.paragraphStyle,
                                      value: paragraphStyle,
                                      range:NSMakeRange(0, attributedString.length))
        return attributedString
    }
    
    public static func lineSpacingText( _ arrayText: [String]) -> NSMutableAttributedString {
        var attributedString = NSMutableAttributedString()
        for text in arrayText {
            attributedString = lineSpacingText(text)
        }
        return attributedString
    }
    
    
    public static func attributeString(_ text: String) -> NSMutableAttributedString{
        let customFont = [ NSAttributedString.Key.font: Dimension.shared.captionFont ]
        let myString = NSMutableAttributedString(string: text, attributes: customFont)
        return myString
    }
    
    public static func attributeStringSemiBold(_ text: String) -> NSMutableAttributedString{
        let customFont = [ NSAttributedString.Key.font: Dimension.shared.captionFontSemiBold ]
        let myString = NSMutableAttributedString(string: text, attributes: customFont)
        return myString
    }
}
