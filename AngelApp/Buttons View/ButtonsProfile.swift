//
//  ButtonsProfile.swift
//  Tests
//  Created by chauveau on 12/05/2020.
//  Copyright © 2020 chauveau. All rights reserved.
//

import SwiftUI

struct ButtonsProfile: View {
    var body: some View {
            VStack {
                HStack {
                    Button(action:{print("Button taper")})
                    {
                        Text("INVITER DES AMIS")
                            .font(.headline)
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                            .frame(width:360, height: 50)
                            .background(LinearGradient(gradient:Gradient(colors:[Color.lightPurpleAngel,Color("PurpleAngel")]),startPoint:.top,endPoint: .bottom))
                            .cornerRadius(10.0)
                    }.padding(.bottom,15)
                        //.padding(.top,30)
                }
                HStack {
                    Button(action:{print("Button taper")})
                    {
                        Text("HISTORIQUE DES ALERTES")
                            .font(.headline)
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                            .frame(width:360, height: 50)
                            .background(LinearGradient(gradient:Gradient(colors:[Color.lightPurpleAngel,Color("PurpleAngel")]),startPoint:.top,endPoint: .bottom))
                            .cornerRadius(10.0)
                    }.padding(.bottom,15)
                }
                HStack {
                    Button(action:{print("Button taper")})
                    {
                        Text("GUIDE D'UTILISATION")
                            .font(.headline)
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                            .frame(width:360, height: 50)
                            .background(LinearGradient(gradient:Gradient(colors:[Color.lightPurpleAngel,Color("PurpleAngel")]),startPoint:.top,endPoint: .bottom))
                            .cornerRadius(10.0)
                    }.padding(.bottom,15)
                }
                HStack {
                    Button(action:{print("Button taper")})
                    {
                        Text("PARAMETRES DE L'APPLICATION")
                            .font(.headline)
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                            .frame(width:360, height: 50)
                            .background(LinearGradient(gradient:Gradient(colors:[Color.lightPurpleAngel,Color("PurpleAngel")]),startPoint:.top,endPoint: .bottom))
                            .cornerRadius(10.0)
                    }
                }
            }
        }
    }
struct ButtonsProfile_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsProfile()
    }
}
