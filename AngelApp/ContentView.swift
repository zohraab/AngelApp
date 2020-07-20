//
//  ContentView.swift
//  Tests
//
//  Created by helenepetitjean on 10/05/2020.
//  Copyright © 2020 helenepetitjean. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewRouter: ViewRouter
    var body: some View {
        
        VStack {
            if viewRouter.currentPage == "onboardingView" {
                OnBoardingView()
            } else if viewRouter.currentPage == "TabBar" {
                TabBar()
                
            }
            
        }
    }
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ViewRouter())
    }
}

