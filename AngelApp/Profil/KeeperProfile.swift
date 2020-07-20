//
//  KeeperProfile.swift
//  Angel
//
//  Created by chauveau on 11/05/2020.
//  Copyright © 2020 chauveau. All rights reserved.
//

import SwiftUI

struct KeeperProfile: View {
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .foregroundColor(Color("ProfileColor"))
                .frame(width: 360, height: 330)
                .opacity(0.8)
              //  .shadow(color: .lightPurpleAngel, radius: 5, x: 10, y: 10)
            
            VStack {
                // Stack Keepers
                VStack  (alignment: .leading){
                    Text("Mes gardiens")
                        .font(.custom("Roboto-Light", size: 25))
                        .padding(.bottom, 2)
                    // Stack photos Keepers
                    HStack {
                        /*     Button(action: {
                         print("GG tu appuies sur le bouton du gardien 1 !")
                         }) */
                        NavigationLink(destination: KeeperView(), label: {
                            Image("KeeperOne").renderingMode(.original)
                                .resizable()
                                .frame(width: 90, height: 90)
                                .clipShape(Circle())
                                .padding(.trailing, 10)
                        })
                        Button(action: {
                            print("GG tu appuies sur le bouton du gardien 2 !")
                        }) {
                            Image("KeeperTwo").renderingMode(.original)
                                .resizable()
                                .frame(width: 90, height: 90)
                                .clipShape(Circle())
                                .padding(.trailing, 10)
                        }
                        Button(action: {
                            print("GG tu appuies sur le bouton du gardien 3 !")
                        }) {
                            Image("KeeperThree").renderingMode(.original)
                                .resizable()
                                .frame(width: 90, height: 90)
                                .clipShape(Circle())
                        }
                    }
                }
                // Stack Protégés
                VStack  (alignment: .leading){
                    Text("Mes protégés")
                        .font(.custom("Roboto-Light", size: 25))
                        .padding(.bottom, 2)
                    
                    // Stack photos Protégés
                    HStack {
                        Button(action: {
                            print("GG tu appuies sur le bouton du protégé 1 !")
                        }) {
                            Image("protégéOne").renderingMode(.original)
                                .resizable()
                                .frame(width: 90, height: 90)
                                .clipShape(Circle())
                                .padding(.trailing, 10)
                        }
                        Button(action: {
                            print("GG tu appuies sur le bouton du protégé 2 !")
                        }) {
                            Image("protégéTwo").renderingMode(.original)
                                .resizable()
                                .frame(width: 90, height: 90)
                                .clipShape(Circle())
                                .padding(.trailing, 10)
                        }
                        
                        NavigationLink(destination: EmptyKeeper(), label: {
                            ZStack {
                                Circle()
                                    .foregroundColor(.gray)
                                    .frame(width: 90, height: 90)
                                Image(systemName: "plus")
                                    .font(.title)
                                    .foregroundColor(.white)
                            }
                        })
                    }
                }
            }
        }
    }
}

struct KeeperProfile_Previews: PreviewProvider {
    static var previews: some View {
        KeeperProfile()
    }
}
