//
//  Connexion.swift
//  Tests
//
//  Created by helenepetitjean on 22/05/2020.
//  Copyright © 2020 helenepetitjean. All rights reserved.
//

import SwiftUI

struct Connexion: View {
    @State private var email = ""
    @State private var password = ""
    @State private var isvalid = false
    
    var body: some View {
        VStack {
            Text("Connexion".uppercased())
                .font(.title)
                .fontWeight(.regular)
                .foregroundColor(Color("PurpleAngel"))
                .padding()
            TextField("Email",text:$email)
                .padding()
                .frame(width:350, height: 40)
                .background(Color.white)
                .overlay(RoundedRectangle(cornerRadius:10).stroke(Color("PurpleAngel"),lineWidth:2)
                    .foregroundColor(.clear))
                .padding(.bottom,20)
            SecureField("Mot de passe",text: $password){
                self.ispasswordvalid()
            }
            .padding()
            .frame(width:350, height: 40)
            .background(Color.white)
            .overlay(RoundedRectangle(cornerRadius:10).stroke(Color("PurpleAngel"),lineWidth:2)
            .foregroundColor(.clear))
            .padding(.bottom,20)
            if !isvalid {
                Text("").foregroundColor(.purpleAngel)
                Text("MOT DE PASSE OUBLIÉ")
                    .foregroundColor(Color.purpleAngel)
                .padding(.bottom,20)
            }
            
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
    func ispasswordvalid() {
        if self.password.count > 8 {
            self.isvalid = true
        }else{
            self.isvalid = false
        }
    }
    struct Connexion_Previews: PreviewProvider {
        static var previews: some View {
            Connexion()
        }
    }
}

