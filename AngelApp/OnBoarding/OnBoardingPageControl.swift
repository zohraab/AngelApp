//
//  OnBoardingPageControl.swift
//  Angel
//
//  Created by chauveau on 14/05/2020.
//  Copyright © 2020 chauveau. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

struct OnBoardingPageControl: UIViewRepresentable {
    
    var numberOfPages: Int
    
    @Binding var currentPageIndex: Int
    
    func makeUIView(context: Context) -> UIPageControl {
        let control = UIPageControl()
        control.numberOfPages = numberOfPages
        control.currentPageIndicatorTintColor = UIColor(red: 88 / 255, green: 86 / 255, blue: 214 / 255, alpha: 10)
        control.pageIndicatorTintColor = UIColor.gray
        
        return control
    }
    
    func updateUIView(_ uiView: UIPageControl, context: Context) {
        uiView.currentPage = currentPageIndex
    }
}


