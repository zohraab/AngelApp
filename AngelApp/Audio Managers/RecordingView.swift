//
//  RecordingView.swift
//  Tests
//
//  Created by helenepetitjean on 13/05/2020.
//  Copyright © 2020 helenepetitjean. All rights reserved.
//

import SwiftUI

struct RecordingView: View {
    
    @ObservedObject var audioRecorder: AudioRecorder
    var body: some View {
        VStack{
            
            NavigationLink(destination: RecordingsList(audioRecorder: audioRecorder)){
                HStack{
                    Text("Voir les Alertes")
                        .foregroundColor(.white)
                }
                .padding(.vertical)
                .frame(width: (UIScreen.main.bounds.width / 2) - 55)
                .background(Color.purpleAngel)
                .clipShape(Capsule())
                .shadow(radius: 6)
            }
            
        }
    }
}

struct RecordingView_Previews: PreviewProvider {
    static var previews: some View {
        RecordingView(audioRecorder: AudioRecorder())
    }
}
