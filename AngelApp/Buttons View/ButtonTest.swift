//
//  ButtonTest.swift
//  Tests
//
//  Created by helenepetitjean on 10/05/2020.
//  Copyright © 2020 helenepetitjean. All rights reserved.
//

import SwiftUI

struct ButtonTest: View {
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 110, height: 110)
                .overlay(
                    Circle()
                        .stroke(Color.greenAngel,lineWidth: 4)
            ).foregroundColor(Color.lightGreenAngel)
                .shadow(color:.greenAngel, radius: 5)
            Image("logoVert")
                .renderingMode(.original)
                .resizable()
                .clipShape(Circle())
                .frame(width: 100, height: 100)
         /*   Text("Test")
                .foregroundColor(Color.white)
                .font(.system(size: 24))
                .fontWeight(.semibold)
                .shadow(color:.greenAngel, radius: 20)*/
        }
    }
}

struct ButtonTest_Previews: PreviewProvider {
    static var previews: some View {
        ButtonTest()
    }
}
