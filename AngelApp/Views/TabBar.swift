//
//  TabBar.swift
//  Tests
//
//  Created by helenepetitjean on 10/05/2020.
//  Copyright © 2020 helenepetitjean. All rights reserved.
//

import SwiftUI

struct TabBar: View {
    @State var show = false
    var body: some View {
        NavigationView{
            ZStack (alignment: .bottom){
                CircleTabView()
                ButtonAngel(audioRecorder: AudioRecorder())
            }
        }
    }
}


struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
struct CircleTabView : View {
    
    @State var index = 0
    
    var body: some View {
        
        VStack{
            
            ZStack{
                if self.index == 0{
                    Profile()
                        .navigationBarTitle("Profil", displayMode: .inline)
                        .navigationBarItems(trailing: Edit())
                }
                else{
                    Map()
                        .navigationBarTitle("Carte", displayMode: .inline)
                    .navigationBarItems(trailing: Text(""))
                }
            }
            CircleTab(index: self.$index)
            
        }
        
    }
}

struct CircleTab : View {
    
    @Binding var index : Int
    
    var body : some View{
        
        
        HStack (spacing:190) {
            
            Button(action: {
                self.index = 0
            }) {
                VStack{
                    if self.index != 0{
                        VStack{
                            Image(systemName: "person.crop.circle.fill")
                                .font(.title)
                            Text("Profil")
                        }.foregroundColor(Color.gray)
                    }else{
                        VStack{
                            Image(systemName: "person.crop.circle.fill")
                                .font(.title)
                            Text("Profil")
                        }.foregroundColor(Color.purpleAngel)
                    }
                }
            }
            Button(action: {
                
                self.index = 2
                
            }) {
                
                VStack{
                    
                    if self.index != 2{
                        
                        VStack{
                            Image(systemName: "map")
                                .font(.title)
                            Text("Carte")
                        }.foregroundColor(Color.gray)
                    }
                    else{
                        
                        VStack{
                            Image(systemName: "map")
                                .font(.title)
                            Text("Carte")
                        }.foregroundColor(Color.purpleAngel)
                        
                    }
                }
            }
        }.padding([.top, .leading, .trailing])
            .background(Color.white)
            .animation(.spring())
    }
}
