//
//  OnboardingData.swift
//  OnboardginTest
//
//  Created by Jason McFarlane on 26/09/2016.
//  Copyright © 2016 Jason McFarlane. All rights reserved.
//

import Foundation

let onboardingPages: [OnboardingPage] = {
   
    let screen1 = OnboardingPage(title: "Simple Abroad Calls", message: "Wonep converts international calls to local calls without WiFi or data", imageName: "Onboarding Screen 1")
    let screen2 = OnboardingPage(title: "Free Wonep to wonep", message: "If the person you’re calling also has Wonep the call will be entirely free", imageName: "Onboarding Screen 2")
    let screen3 = OnboardingPage(title: "No hidden charges or fees", message: "We have a very small charge for non-Wonep calls to mobiles or landline", imageName: "Onboarding Screen 3")
    
    return [screen1, screen2, screen3]
    
}()
