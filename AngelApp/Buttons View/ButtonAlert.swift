//
//  ButtonAlert.swift
//  Tests
//
//  Created by helenepetitjean on 10/05/2020.
//  Copyright © 2020 helenepetitjean. All rights reserved.
//

import SwiftUI

struct ButtonAlert: View {
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 110, height: 110)
                .overlay(
                    Circle()
                        .stroke(Color.purpleAngel,lineWidth: 4)
            ).foregroundColor(Color.lightPurpleAngel)
                .shadow(color:.purpleAngel, radius: 5)
            Image("logoViolet")
                .renderingMode(.original)
                .resizable()
                .clipShape(Circle())
                .frame(width: 100, height: 100)
        }
    }
}
struct ButtonAlert_Previews: PreviewProvider {
    static var previews: some View {
        ButtonAlert()
    }
}
