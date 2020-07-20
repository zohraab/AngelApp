//
//  EmptyProfile.swift
//  Angel
//
//  Created by chauveau on 20/05/2020.
//  Copyright © 2020 chauveau. All rights reserved.
//

import SwiftUI

struct EmptyProfile: View {
    @State var lastName: String = ""
    @State var firstName: String = ""
    @State var Email: String = ""
    @State var passWord: String = ""
    @State var confirmPassWord: String = ""
    @State var phoneNumber: String = ""
    @State var addContacts: String = ""
    @State var addPhoto = true
    @State var activateDarkColor = false
    
    var body: some View {
        ZStack{
            VStack{
                Text("Créer mon profil".uppercased())
                    .font(.title)
                    .fontWeight(.regular)
                    .foregroundColor(Color("PurpleAngel"))
                TextField("Nom",text:$lastName)
                    .padding()
                    .frame(width:350, height: 40)
                    .background(Color.white)
                    .overlay(RoundedRectangle(cornerRadius:10).stroke(Color("PurpleAngel"),lineWidth:2)
                        .foregroundColor(.clear))
                    .padding(.bottom,20)
                TextField("Prénom",text:$firstName)
                    .padding()
                    .frame(width:350, height: 40)
                    .background(Color.white)
                    .overlay(RoundedRectangle(cornerRadius:10).stroke(Color("PurpleAngel"),lineWidth:2)
                        .foregroundColor(.clear))
                    .padding(.bottom,20)
                TextField("Email",text:$Email)
                    .padding()
                    .frame(width:350, height: 40)
                    .background(Color.white)
                    .overlay(RoundedRectangle(cornerRadius:10).stroke(Color("PurpleAngel"),lineWidth:2)
                        .foregroundColor(.clear))
                    .padding(.bottom,20)
                TextField("Télèphone",text:$phoneNumber)
                    .padding()
                    .frame(width:350, height: 40)
                    .background(Color.white)
                    .overlay(RoundedRectangle(cornerRadius:10).stroke(Color("PurpleAngel"),lineWidth:2)
                        .foregroundColor(.clear))
                    .padding(.bottom,20)
                TextField("Mot de passe",text:$passWord)
                    .padding()
                    .frame(width:350, height: 40)
                    .background(Color.white)
                    .overlay(RoundedRectangle(cornerRadius:10).stroke(Color("PurpleAngel"),lineWidth:2)
                        .foregroundColor(.clear))
                    .padding(.bottom,20)
                
                TextField("Confirmer le mot de passe",text:$confirmPassWord)
                    .padding()
                    .frame(width:350, height: 40)
                    .background(Color.white)
                    .overlay(RoundedRectangle(cornerRadius:10).stroke(Color("PurpleAngel"),lineWidth:2)
                        .foregroundColor(.clear))
                    .padding(.bottom,20)
                
                    HStack {
                        
                        Text("Ajouter une photo")
                            .font(.headline)
                            .fontWeight(.light)
                            .foregroundColor(Color("PurpleAngel"))
                            .frame(width:160)
                        
                        Button(action:{print("VALIDER")})
                        {
                            Text("AJOUTER")
                                .font(.headline)
                                .fontWeight(.medium)
                                .foregroundColor(Color.white)
                        }
                        .padding()
                        .frame(width:140, height: 40)
                        .background(LinearGradient(gradient:Gradient(colors:[Color.lightPurpleAngel,Color("PurpleAngel")]),startPoint:.top,endPoint: .bottom))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }.padding()
                    
                /*    HStack {
                        Text("Activer le mode sombre")
                            .font(.headline)
                            .fontWeight(.light)
                            .foregroundColor(Color("PurpleAngel"))
                            .padding()
                        Toggle("",isOn: $activateDarkColor)
                            .frame(width:80, height:40)
                    }
           */
                Button(action:{print("Button taper")})
                {
                    Text("AJOUTER MES CONTACTS")
                        .font(.headline)
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .frame(width:350, height: 40)
                        .background(LinearGradient(gradient:Gradient(colors:[Color.lightPurpleAngel,Color("PurpleAngel")]),startPoint:.top,endPoint: .bottom))
                        .cornerRadius(10.0)
                }.padding(.bottom,15)
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
                
            }
        }
    }
}
struct EmptyProfile_Previews: PreviewProvider {
    static var previews: some View {
        EmptyProfile()
    }
}

