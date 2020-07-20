//
//  KeeperView.swift
//  Tests
//  Created by chauveau on 21/05/2020.
//  Copyright © 2020 chauveau. All rights reserved.
//

import SwiftUI

struct KeeperView: View {
    var body: some View {         
            VStack {
                
                ZStack {
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .background(LinearGradient(gradient:  Gradient(colors: [Color.lightPurpleAngel, Color("PurpleAngel")]), startPoint: .top, endPoint: .bottom))
                        .cornerRadius(25)
                        .frame(width: 360, height: 160)
                        .opacity(0.8)
                     //   .shadow(color: .lightPurpleAngel, radius: 5, x: 10, y: 10)
                    
                    HStack {
                        Image("KeeperOne").resizable()
                            .frame(width: 120, height: 120)
                            .clipShape(Circle())
                            .padding()
                        
                        VStack (alignment: .leading){
                            Text("Tom Pouce")
                                .font(.custom("Roboto-Light", size: 35))
                                .fontWeight(.bold)
                            
                            Spacer().frame(height: 20)
                            
                            VStack (alignment: .leading){
                                Text("06 17 23 52 89")
                                    .font(.custom("Roboto-Light", size: 20))
                                Text("tomp@gmail.com")
                                    .font(.custom("Roboto-Light", size: 20))
                            }
                        }
                    }.padding(.top)
                }
                
                ZStack (alignment: .top) {
                    
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundColor(Color("ProfileColor"))
                        .frame(width: 360)
                        .opacity(0.8)
                        .shadow(color: .lightPurpleAngel, radius: 5, x: 10, y: 10)
                    HStack{
                    RecordingsList(audioRecorder: AudioRecorder())
                    }
                    }
                }
            }
        }

    struct KeeperView_Previews: PreviewProvider {
        static var previews: some View {
            KeeperView()
        }
}
