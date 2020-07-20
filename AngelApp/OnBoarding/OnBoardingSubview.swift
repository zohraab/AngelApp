//
//  OnBoardingSubview.swift
//  Angel
//
//  Created by chauveau on 12/05/2020.
//  Copyright © 2020 chauveau. All rights reserved.
//

import SwiftUI

struct OnBoardingSubview: View {
    var imageString : String
    
    var body: some View {
        VStack {
           Image(imageString).resizable()
        }
    }
}

struct OnBoardingSubview_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingSubview(imageString: "Logo")
    }
}
