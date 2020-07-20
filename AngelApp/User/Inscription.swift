//
//  Inscription.swift
//  Angel
//
//  Created by Zohra  Abada on 11/05/2020.
//  Copyright © 2020 chauveau. All rights reserved.
//

import SwiftUI

struct Inscription: View {
    
    @State private var nom = ""
    @State private var password = ""
    @State private var email = ""
    
    var body: some View {
        VStack {
            Text("Inscription".uppercased())
                .font(.title)
                .fontWeight(.regular)
                .foregroundColor(Color("PurpleAngel"))
                .padding()
            TextField("Nom",text:$nom)
                .padding()
                .frame(width:350, height: 40)
                .background(Color.white)
                .overlay(RoundedRectangle(cornerRadius:10).stroke(Color("PurpleAngel"),lineWidth:2)
                    .foregroundColor(.clear))
                .padding(.bottom,20)
            TextField("Email",text:$email)
                .padding()
                .frame(width:350, height: 40)
                .background(Color.white)
                .overlay(RoundedRectangle(cornerRadius:10).stroke(Color("PurpleAngel"),lineWidth:2)
                    .foregroundColor(.clear))
                .padding(.bottom,20)
            TextField("Mot de passe",text:$password)
                           .padding()
                           .frame(width:350, height: 40)
                           .background(Color.white)
                           .overlay(RoundedRectangle(cornerRadius:10).stroke(Color("PurpleAngel"),lineWidth:2)
                               .foregroundColor(.clear))
                           .padding(.bottom,20)
            Button(action:{
            })
            {
                Text("VALIDER")
                    .font(.headline)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .frame(width:350, height: 40)
                    .background(LinearGradient(gradient:Gradient(colors:[Color.lightPurpleAngel,Color("PurpleAngel")]),startPoint:.top,endPoint: .bottom))
                    .cornerRadius(10.0)
            }
            
            Image("Logo")
                .resizable()
                .foregroundColor(.purpleAngel)
                .frame(width:250.0, height:250.0 )
        }
    }
}
struct Inscription_Previews: PreviewProvider {
    static var previews: some View {
        Inscription()
    }
}

