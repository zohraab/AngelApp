//
//  AlertActiveView.swift
//  Tests
//
//  Created by helenepetitjean on 11/05/2020.
//  Copyright © 2020 helenepetitjean. All rights reserved.


import SwiftUI
import MapKit

struct AlertActiveView: View {
    @State var start = false
    
    var body: some View {
        VStack{
            Map()
                .edgesIgnoringSafeArea(.top)
                .frame(height:250)
            
            Image("Logo")
                
                .renderingMode(.original)
                .padding(30)
                
                .frame(width: 190.0)
                .background(Color("ButtonColor"))
                .clipShape(Circle())
                .overlay(Circle()
                    .stroke(Color.white, lineWidth: 5))
                .offset(y: 0)
                .shadow(radius: 15).offset(x: 0, y: -120)
            
            HStack(alignment: .center){
                Image(systemName: "mappin.and.ellipse")
                    .font(.system(size: 24))
                Text("Position en direct")
                    .font(.system(size: 24))
                    .fontWeight(.semibold)
            }.foregroundColor(Color.purpleAngel)
            
            RecordingView(audioRecorder: AudioRecorder())
           
        }.navigationBarTitle("Ana Tolie Alerte Active", displayMode: .inline)
    }
    
}

struct AlertActiveView_Previews: PreviewProvider {
    static var previews: some View {
        AlertActiveView()
    }
}
