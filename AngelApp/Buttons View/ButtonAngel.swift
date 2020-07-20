//
//  Angel.swift
//  Tests
//
//  Created by helenepetitjean on 12/05/2020.
//  Copyright © 2020 helenepetitjean. All rights reserved.
//

import SwiftUI


struct ButtonAngel: View {
    @ObservedObject var audioRecorder: AudioRecorder
    @State var showView = false
    
    var body: some View {
        
        VStack{
            //Bouton Play
            Button(action: {
                self.audioRecorder.startRecording()
                print("*** record start ***")
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    self.showView = true
                }
            }) {
                HStack{
                    Image("Logo")
                        .renderingMode(.original)
                        .padding(30)
                        .frame(width: 150.0)
                        .background(Color("ButtonColor"))
                        .clipShape(Circle())
                        .overlay(Circle()
                            .stroke(Color.white, lineWidth: 5))
                        .offset(y: 0)
                        .shadow(radius: 15)
                }
            }
            //MARK: - NAVIGATION LINKS
            NavigationLink(destination: AlertView(audioRecorder: audioRecorder), isActive: $showView) {
                EmptyView()
            }
 
            //Fin bouton play
        }
        
    }
}

struct ButtonAngel_Previews: PreviewProvider {
    static var previews: some View {
        ButtonAngel(audioRecorder: AudioRecorder())
    }
}
