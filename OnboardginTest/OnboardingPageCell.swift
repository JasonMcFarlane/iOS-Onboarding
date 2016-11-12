//
//  OnboardingPageCell.swift
//  OnboardginTest
//
//  Created by Jason McFarlane on 26/09/2016.
//  Copyright © 2016 Jason McFarlane. All rights reserved.
//

import UIKit

class OnboardingPageCell: UICollectionViewCell {
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    var onboardingPage: OnboardingPage? {
        didSet {
            guard let onboardingPage = onboardingPage else {
                return
            }
            
            imageView.image = UIImage(named: onboardingPage.imageName)
            titleLabel.text = onboardingPage.title.uppercased()
            messageLabel.text = onboardingPage.message
        }
    }
}
