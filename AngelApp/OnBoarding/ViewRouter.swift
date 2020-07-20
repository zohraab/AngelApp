//
//  ViewRouter.swift
//  Tests
//
//  Created by helenepetitjean on 21/05/2020.
//  Copyright © 2020 helenepetitjean. All rights reserved.
//
import Foundation
import SwiftUI

class ViewRouter: ObservableObject {

    init() {
        if !UserDefaults.standard.bool(forKey: "didLaunchBefore") {
            UserDefaults.standard.set(true, forKey: "didLaunchBefore")
            currentPage = "onboardingView"
        } else {
            currentPage = "TabBar"
        }
    }
    
    @Published var currentPage: String
    
}
