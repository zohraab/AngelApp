//
//  ButtonOnBoarding.swift
//  Tests
//
//
//  Created by chauveau on 20/05/2020.
//  Copyright © 2020 chauveau. All rights reserved.
//

import SwiftUI

struct ButtonOnBoarding: View {
     var body: some View {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
    }

    struct ButtonOnBoarding_Previews: PreviewProvider {
        static var previews: some View {
            ButtonOnBoarding()
        }
    }

    struct ButtonContentOne: View {
        var body : some View {
            Image(systemName:"arrow.left")
                .padding()
                .frame(width: 50, height: 50)
                .background(Color.gray)
                .foregroundColor(.white)
                .font(.largeTitle)
                .cornerRadius(10)
        }
    }

    struct ButtonContentTwo: View {
        var body: some View {
            Image(systemName:"arrow.right")
                .padding()
                .frame(width: 50, height: 50)
                .background(LinearGradient(gradient:  Gradient(colors: [.white, Color("PurpleAngel")]), startPoint: .top, endPoint: .bottom))
                .foregroundColor(.white)
                .font(.largeTitle)
                .cornerRadius(10)
        }
    }
