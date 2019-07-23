//
//  Array+Extention.swift
//  TikiApp
//
//  Created by admin on 7/23/19.
//  Copyright © 2019 admin. All rights reserved.
//

import Foundation

extension Array {
    subscript(safe index: Int) -> Element? {
        if index < count && index >= 0 {
            return self[index]
        } else {
            return nil
        }
    }
}
