//
//  Map.swift
//  Tests
//
//  Created by helenepetitjean on 23/05/2020.
//  Copyright © 2020 helenepetitjean. All rights reserved.
//

import SwiftUI

struct Map: View {
    @Environment (\.presentationMode) var presentationMode
    @State var selectedRefugeAnnotation: RefugeAnnotation?
    @State var isActive: Bool = false
    
    let refuges: [RefugeAnnotation] = [
        Refuge(name: "Le Vertigo", adresse: "Plage des catalans Marseille", horaires: "22h - 5h", isOpen: true, type: .nightClub, latitude: 43.289884, longitude: 5.360595),
        Refuge(name: "Obrady's", adresse: "378 Avenue de Mazargues, 13008 Marseille", horaires: "10h - 2h", isOpen: true, type: .bar, latitude: 43.258803, longitude: 5.3941183),
        Refuge(name: "La vieille pelle", adresse: "37 Avenue Saint-Jean, 13002 Marseille", horaires: "19h - Minuit", isOpen: true, type: .restauration, latitude: 43.287947, longitude: 5.362256),
        Refuge(name: "Le Trolley Bus", adresse: "24 Quai de Rive Neuve, 13007 Marseille", horaires: "22h - 5h", isOpen: true, type: .nightClub, latitude: 43.300754, longitude: 5.363086),
        
        Refuge(name: "VIP Room", adresse: " 40 Rue Saint-Pierre, 13005 Marseille", horaires: "22h - 5h", isOpen: true, type: .nightClub, latitude: 43.297024, longitude: 5.379445),
        Refuge(name: "Le BlackStone", adresse: "10 Boulevard Gustave Ganay, 13009 Marseille", horaires: "10h - 2h", isOpen: true, type: .bar,latitude: 43.289759, longitude: 5.38217),
        Refuge(name: "Chez Quan", adresse: "148 Avenue Pierre Mendès France, 13008 Marseille", horaires: "19h - Minuit", isOpen: true, type: .restauration, latitude: 43.28776, longitude: 5.374331),
        Refuge(name: "Le Bazar", adresse: " 90 Boulevard Rabatau, 13008 Marseille", horaires: "22h - 5h", isOpen: true, type: .nightClub, latitude: 43.298973, longitude: 5.378508),
        
        Refuge(name: "La Joïa", adresse: "935 Route de l'Enfant, 13290 Aix-en-Provence", horaires: "22h - 5h", isOpen: true, type: .nightClub, latitude: 43.295819, longitude: 5.379739),
        Refuge(name: "Le 20 000 lieues", adresse: " 12 Boulevard Alexandre Delabre, 13008 Marseille", horaires: "10h - 2h", isOpen: true, type: .bar, latitude: 43.292976, longitude: 5.385561),
        Refuge(name: "La table de l'ours", adresse: "17 Route de la Valentine, 13011 Marseille", horaires: "19h - Minuit", isOpen: true, type: .restauration,latitude: 43.288291, longitude: 5.388122),
        Refuge(name: "El Santo Cachon", adresse: "40 Rue Ferrari, 13005 Marseille", horaires: "22h - 5h", isOpen: true, type: .restauration, latitude: 43.304782, longitude: 5.375663),
        
        Refuge(name: "L'Exit", adresse: "12 Quai de Rive Neuve, 13007 Marseille", horaires: "22h - 5h", isOpen: true, type: .nightClub,latitude: 43.310216, longitude: 5.366722),
        Refuge(name: "Shamrock", adresse: "16 Quai de Rive Neuve, 13007 Marseill", horaires: "10h - 2h", isOpen: true, type: .bar, latitude: 43.303283, longitude: 5.373131),
        Refuge(name: "Ko-Ishi", adresse: "25 Rue Sainte, 13001 Marseille", horaires: "19h - Minuit", isOpen: true, type: .restauration, latitude: 43.294538, longitude: 5.354993),
        Refuge(name: "Hard Rock Café", adresse: "35 Cours Honoré d'Estienne d'Orves, 13001 Marseille", horaires: "22h - 5h", isOpen: true, type: .bar, latitude: 43.277794, longitude: 5.363891),].map { (refuge) -> RefugeAnnotation in
            RefugeAnnotation(refuge: refuge)
    }
    
    var body: some View {
        MapView(selectedRefugeAnnotation: $selectedRefugeAnnotation, isActive: $isActive, annotations: refuges)
              .navigationBarTitle("Carte", displayMode: .inline)
            .edgesIgnoringSafeArea(.all)
            .sheet(item: $selectedRefugeAnnotation, onDismiss: {
                print("On dismiss")
            }) {
                refugeAnnotation in
                VStack{
                    Button(action: {
                        print ("dismiss")
                        self.presentationMode.wrappedValue.dismiss()
                    }){Image(systemName:"xmark.square.fill").foregroundColor(Color.purpleAngel).padding(.leading, 320)}
                    Text(refugeAnnotation.title ?? "Pas de refuge")
                        .foregroundColor(Color.purpleAngel)
                        .font(.largeTitle)
                        //.padding(.top)
                    Text(refugeAnnotation.subtitle ?? "Pas d'adresse")
                        .foregroundColor(Color.gray)
                        .font(.headline)
                    Text(refugeAnnotation.horaires ?? "Pas d'adresse")
                        .font(.headline)
                        .foregroundColor(Color.gray)
                    Map()
                        .frame(height: 300)
                    Text("Montrez notre logo à l'entrée de  l'etablissement ou dites leur ANGEL pour vous mettre à l'abri.")
                        .padding()
                        .foregroundColor(Color.gray)
                        .font(.headline)
                        .multilineTextAlignment(.center)
                        .lineLimit(4)
                    Image("Logo")
                        .resizable()
                        .frame(width:150, height:150)
                }
        }
    }
}
struct RefugeAnnotationView: View {
    @Binding var selectedRefugeAnnotation: RefugeAnnotation?
    
    var body: some View {
        VStack {
            Text(selectedRefugeAnnotation?.title ?? "Pas de refuge")
                .font(.largeTitle)
            Text(selectedRefugeAnnotation?.subtitle ?? "Pas d'adresse")
                .font(.headline)
                .foregroundColor(.red)
        }
    }
}

struct Map_Previews: PreviewProvider {
    static var previews: some View {
        Map()
    }
}
