//
//  PulsatingViewModel.swift
//  swiftUI_button
//
//  Created by helenepetitjean on 18/05/2020.
//  Copyright © 2020 helenepetitjean. All rights reserved.
//

import SwiftUI
import Combine

class PulsatingViewModel: ObservableObject {
    @Published var colorIndex = 0
}

struct PulsatingView: View {
    
    @ObservedObject var viewModel: PulsatingViewModel
    
    func colourToShow() -> Color {
        switch viewModel.colorIndex {
        case 0:
            return Color.purpleAngel
        case 1:
            return Color.greenAngel
        case 2:
            return Color.redAngel
        default:
            return Color.purpleAngel
        }
    }
    
    @State var animate = false
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .fill(colourToShow().opacity(0.15))
                    .frame(width: 900, height:900)
                    .scaleEffect(self.animate ? 0 : 1)
                Circle()
                    .fill(colourToShow().opacity(0.15))
                    .frame(width: 800, height: 800)
                    .scaleEffect(self.animate ? 0 : 1)
                Circle()
                    .fill(colourToShow().opacity(0.15))
                    .frame(width: 700, height: 700)
                    .scaleEffect(self.animate ? 0 : 1)
                Circle()
                    .fill(colourToShow().opacity(0.25))
                    .frame(width: 600, height: 600)
                    .scaleEffect(self.animate ? 0 : 1)
                Circle()
                    .fill(colourToShow().opacity(0.35))
                    .frame(width: 400, height: 400)
                    .scaleEffect(self.animate ? 0 : 1)
                Circle()
                    .fill(colourToShow().opacity(0.45))
                    .frame(width: 500, height: 500)
                    .scaleEffect(self.animate ? 0 : 1)
                Circle()
                    .fill(colourToShow().opacity(0.55))
                    .frame(width: 300, height: 300)
                    .scaleEffect(self.animate ? 0 : 1)
                Circle()
                    .fill(colourToShow())
                    .frame(width: 150, height:150)
                    .scaleEffect(self.animate ? 0 : 1)
            }
            .onAppear { self.animate = true }
            .animation(animate ? Animation.easeInOut(duration: 2.5).repeatForever(autoreverses: true) : .default)
            .onReceive(viewModel.$colorIndex) { _ in
                self.animate = false
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                    self.animate = true
                }
            }
        }
    }
}

struct ButtonPulsatingChangeView: View {
    private var model = PulsatingViewModel()
    var body: some View {
        ZStack {
            PulsatingView(viewModel: model)
            VStack{
                HStack(spacing:120){
                    Button(action: { self.model.colorIndex = 1}){
                        ButtonTest()
                    }
                    Button(action:{ self.model.colorIndex = 2}){
                        ButtonUrgence()
                    }
                }
                HStack{
                    Button(action: { self.model.colorIndex = 0}){
                       ButtonAlert()
                    }
                }
            }.offset(y:180)
        }
    }
}

struct ButtonPulsatingChangeView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonPulsatingChangeView()
    }
}



