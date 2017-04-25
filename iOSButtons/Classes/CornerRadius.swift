//
//  CornerRadius.swift
//  Pods
//
//  Created by Dev-06 on 25/04/17.
//
//

import UIKit

@objc(CornerRadiusPreset)
public enum CornerRadiusPreset: Int {
    case none
    case cornerRadius1
    case cornerRadius2
    case cornerRadius3
    case cornerRadius4
    case cornerRadius5
    case cornerRadius6
    case cornerRadius7
    case cornerRadius8
    case cornerRadius9
}

/// Converts the CornerRadiusPreset enum to a CGFloat value.
public func CornerRadiusPresetToValue(preset: CornerRadiusPreset) -> CGFloat {
    switch preset {
    case .none:
        return 0
    case .cornerRadius1:
        return 2
    case .cornerRadius2:
        return 4
    case .cornerRadius3:
        return 8
    case .cornerRadius4:
        return 12
    case .cornerRadius5:
        return 16
    case .cornerRadius6:
        return 20
    case .cornerRadius7:
        return 24
    case .cornerRadius8:
        return 28
    case .cornerRadius9:
        return 32
    }
}
