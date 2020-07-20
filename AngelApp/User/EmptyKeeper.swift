//
//  EmptyKeeper.swift
//  Tests
//
//  Created by helenepetitjean on 22/05/2020.
//  Copyright © 2020 helenepetitjean. All rights reserved.
//

import SwiftUI

struct EmptyKeeper: View {
    @State var lastName: String = ""
    @State var firstName: String = ""
    @State var Email: String = ""
    @State var passWord: String = ""
    @State var phoneNumber: String = ""
    @State var addContacts: String = ""
    @State var addPhoto = true
    @State var activateDarkColor = false
    
    var body: some View {
        VStack{
            Text("Ajouter un gardien".uppercased())
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
            
            //VStack (alignment: .leading) {
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
            }.padding()
            
        }
    }
}
struct EmptyKeeper_Previews: PreviewProvider {
    static var previews: some View {
        EmptyKeeper()
    }
}
