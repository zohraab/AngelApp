//
//  UserProfile.swift
//  Tests
//  Created by chauveau on 11/05/2020.
//  Copyright © 2020 chauveau. All rights reserved.
//

import SwiftUI

struct UserProfile: View {
    var body: some View {
        VStack {
            ZStack (alignment: .leading){
                
                Rectangle()
                    .foregroundColor(.clear)
                    .background(LinearGradient(gradient:  Gradient(colors: [Color.lightPurpleAngel, Color("PurpleAngel")]), startPoint: .top, endPoint: .bottom))
                    .cornerRadius(25)
                    .frame(width: 360, height: 160)
                    .opacity(0.8)
                // .shadow(color: .lightPurpleAngel, radius: 5, x: 10, y: 10)
                HStack (){
                    Image("portrait").resizable()
                        .frame(width: 120, height: 120)
                        .clipShape(Circle())
                        .padding()
                    VStack (alignment: .leading){
                        Text("Ana Tolie")
                            .font(.custom("Roboto-Light", size: 35))
                            .fontWeight(.bold)
                        
                        Spacer().frame(height: 20)
                        
                        VStack (alignment: .leading){
                            Text("06 17 34 52 49")
                                .font(.custom("Roboto-Light", size: 20))
                            Text("anatolie@gmail.com")
                                .font(.custom("Roboto-Light", size: 20))
                        }
                    }
                }
            }
        }
    }
}

struct UserProfile_Previews: PreviewProvider {
    static var previews: some View {
        UserProfile()
    }
}
