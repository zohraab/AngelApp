//
//  BraceletProfile.swift
//  Tests
//
//  Created by chauveau on 11/05/2020.
//  Copyright © 2020 chauveau. All rights reserved.
//

import SwiftUI

struct BraceletProfile: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.clear)
                .background(LinearGradient(gradient:  Gradient(colors: [Color.lightPurpleAngel, Color("PurpleAngel")]), startPoint: .top, endPoint: .bottom))
                .cornerRadius(25)
                .frame(width: 360, height: 160)
                .opacity(0.8)
            //  .shadow(color: .lightPurpleAngel, radius: 5, x: 10, y: 10)
            HStack (spacing: 40) {
                VStack (alignment: .leading){
                    Text("Connecter mon")
                    Text("bracelet d'alerte")
                    Text("à l'application")
                }.font(.custom("Roboto-Light", size: 28))
                
                Button(action: {
                    print("GG tu appuies sur le bouton pour connecter le BT !")
                }) {
                    Image("bluetooth")
                        .foregroundColor(Color.black)
                        .background(Circle()
                            .frame(width: 90, height: 90)
                          //  .shadow(color: .lightPurpleAngel, radius: 5, x: 3, y: 3)
                            .foregroundColor (Color("pinkAngel"))
                            .overlay(
                                Circle()
                                    .stroke(Color.white, lineWidth: 4)
                            )
                    )
                }
                
            }
        }
    }
}

struct BraceletProfile_Previews: PreviewProvider {
    static var previews: some View {
        BraceletProfile()
    }
}
