//
//  Double.swift
//
//  Created by Eli Byrd on 7/15/24.
//

import Foundation

extension Double {
    var eightBytes: [UInt8] {
        let bitPattern = self.bitPattern
        return [
            UInt8((bitPattern >> 56) & 0xFF),
            UInt8((bitPattern >> 48) & 0xFF),
            UInt8((bitPattern >> 40) & 0xFF),
            UInt8((bitPattern >> 32) & 0xFF),
            UInt8((bitPattern >> 24) & 0xFF),
            UInt8((bitPattern >> 16) & 0xFF),
            UInt8((bitPattern >> 8) & 0xFF),
            UInt8(bitPattern & 0xFF)
        ]
    }
}
