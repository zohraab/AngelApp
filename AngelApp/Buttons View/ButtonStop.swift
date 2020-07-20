//
//  ButtonStop.swift
//  Tests
//
//  Created by helenepetitjean on 13/05/2020.
//  Copyright © 2020 helenepetitjean. All rights reserved.
//

import SwiftUI

struct ButtonStop: View {
    @ObservedObject var audioRecorder: AudioRecorder
    @State var showView = false
    
    var body: some View {
        VStack{
            //Bouton stop
            Button(action: {
                self.audioRecorder.stopRecording()
                print("*** record start ***")
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    self.showView = true
                }
            }) {
                HStack{
                    Text("Stop")
                        .foregroundColor(Color.white)
                        .font(.system(size: 80))
                        .fontWeight(.semibold).shadow(radius: 6)
                }
            }
            //MARK: - NAVIGATION LINKS
            NavigationLink(destination: AlertActiveView(), isActive: $showView) {
                EmptyView().hidden()
            }
            //Fin Bouton stop
        }
    }
}

struct ButtonStop_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStop(audioRecorder: AudioRecorder())
    }
}
