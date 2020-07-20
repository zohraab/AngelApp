//
//  RecordingList.swift
//  Tests
//
//  Created by helenepetitjean on 13/05/2020.
//  Copyright © 2020 helenepetitjean. All rights reserved.
//

import SwiftUI

struct RecordingsList: View {
    
    @ObservedObject var audioRecorder: AudioRecorder
    
    var body: some View {
        VStack{
            Text("Historique des alertes")
                        .font(.title)
                        .fontWeight(.medium)
                        .foregroundColor(Color.purpleAngel)
                        .padding()
                
            List {
                                  
                                        
                                    ForEach(audioRecorder.recordings, id: \.createdAt) { recording in
                                        RecordingRow(audioURL: recording.fileURL)
                                      //  .listRowBackground(Color.green)
                                    }

                                        .onDelete(perform: delete)
                                }
        }.frame(width: 360) .navigationBarItems(trailing: EditButton())
      
    }
    
    func delete(at offsets: IndexSet) {
        
        var urlsToDelete = [URL]()
        for index in offsets {
            urlsToDelete.append(audioRecorder.recordings[index].fileURL)
        }
        audioRecorder.deleteRecording(urlsToDelete: urlsToDelete)
    }
}

struct RecordingRow: View {
    
    var audioURL: URL
    
    @ObservedObject var audioPlayer = AudioPlayer()
    
    var body: some View {
        HStack {
            Text("\(audioURL.lastPathComponent)")
            Spacer()
            if audioPlayer.isPlaying == false {
                Button(action: {
                    self.audioPlayer.startPlayback(audio: self.audioURL)
                }) {
                    Image(systemName: "play.circle")
                        .imageScale(.large)
                        .foregroundColor(Color.purpleAngel)
                }
            } else {
                Button(action: {
                    self.audioPlayer.stopPlayback()
                }) {
                    Image(systemName: "stop.fill")
                    .imageScale(.large)
                    .foregroundColor(Color.purpleAngel)
                }
            }
        }
        
    }
}

struct RecordingsList_Previews: PreviewProvider {
    static var previews: some View {
        RecordingsList(audioRecorder: AudioRecorder())
    }
}
