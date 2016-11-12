//
//  OnboardingButton.swift
//  OnboardginTest
//
//  Created by Jason McFarlane on 26/09/2016.
//  Copyright © 2016 Jason McFarlane. All rights reserved.
//

import UIKit

@IBDesignable
class OnboardingButton: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
    
    @IBInspectable var bgColor: UIColor? {
        didSet {
            backgroundColor = bgColor
        }
    }
    
}
