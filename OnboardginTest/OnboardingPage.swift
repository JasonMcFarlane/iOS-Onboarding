//
//  OnboardingPage.swift
//  OnboardginTest
//
//  Created by Jason McFarlane on 26/09/2016.
//  Copyright © 2016 Jason McFarlane. All rights reserved.
//

import Foundation

struct OnboardingPage {
    
    private var _title: String
    private var _message: String
    private var _imageName: String
    
    var title: String {
        return _title
    }
    
    var message: String {
        return _message
    }
    
    var imageName: String {
        return _imageName
    }
    
    init(title: String, message: String, imageName: String) {
        _title = title
        _message = message
        _imageName = imageName
    }
    
}
