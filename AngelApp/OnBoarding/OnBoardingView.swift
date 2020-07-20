//
//  OnBoardingView.swift
//  Angel
//
//  Created by chauveau on 13/05/2020.
//  Copyright © 2020 chauveau. All rights reserved.
//

import SwiftUI

struct OnBoardingView: View {
    @State var currentPageIndex = 0
    @EnvironmentObject var viewRouter: ViewRouter
    var subviews = [
        UIHostingController(rootView: OnBoardingSubview(imageString: "1")),
        UIHostingController(rootView: OnBoardingSubview(imageString: "2")),
        UIHostingController(rootView: OnBoardingSubview(imageString: "3")),
        UIHostingController(rootView: OnBoardingSubview(imageString: "4"))
    ]
    
    var titles = ["Ton ange gardien digital",
                  "Etape 1","Etape 2","Etape 3"]
    
    var captions = ["Angel est une application française à destination des femmes qui souhaitent se préserver des violences.","Inscris-toi et remplis ton profil.","Invite 3 personnes de confiance à jouer les anges gardiens !","Alerte rapidement et discrètement tes anges gardiens en cas de danger !"]
    
    var texts: [String] = ["Que ces dernières soient présentes ou potentielles, il te sera possible d’alerter des contacts que tu auras définis comme étant de confiance pour les prévenir du fait que tu te trouves dans une situation de danger.","Pour profiter de l’ensemble des fonctionnalités de l’application, n’oublie pas d’accepter que ton téléphone soit géolocalisé, et d’autoriser l'accès au micro.","Choisis 3 de tes contacts les plus proches et invite-les à rejoindre l’application.","Ils recevront une notification, pourront écouter le son de l’environnement dans lequel tu te trouves, et obtenir ta position.Trouve l’abri sûr le plus proche en utilisant la carte qui te géolocalise en temps réel."]
    
    var body: some View {
        
        VStack {
            
            OnBoardingPageViewController(viewControllers: subviews, currentPageIndex: $currentPageIndex)
                .frame( width:250, height: 250)
            
            
            Text(titles[currentPageIndex])
                .font(.custom("Roboto-BoldCondensedItalic", size: 24))
                .font(.title)
                .foregroundColor(Color.purpleAngel)
                .padding()
                .frame(width: 310, height: 30, alignment: .leading)
                .lineLimit(nil)
            Text(captions[currentPageIndex])
                .font(.custom("Roboto-Light", size: 22))
                .font(.title)
                .foregroundColor(Color.gray)
                .padding()
                .frame(width: 310, height:140, alignment: .leading)
                .lineLimit(nil)
            Text(texts[currentPageIndex])
                .font(.custom("Roboto-Medium", size: 20))
                .foregroundColor(Color.gray)
                .padding()
                .frame(width: 310, height: 220, alignment: .leading)
                .lineLimit(nil)
            
            
            HStack  {
                OnBoardingPageControl(numberOfPages: subviews.count, currentPageIndex: $currentPageIndex)
                
                Spacer()
                
                if currentPageIndex == 0 {
                    Button(action: {
                        print("Nothing")
                    }) {
                        ButtonContentOne()
                    }
            } else {
                Button(action: {
                    if self.currentPageIndex == self.subviews.count {
                        self.currentPageIndex = 0
                    } else {
                        self.currentPageIndex -= 1
                    }
                }) {
                    ButtonContentOne()
                }
            }
                    if currentPageIndex == 3 {
                        Button(action: {
                            withAnimation {
                                self.viewRouter.currentPage = "TabBar"
                            }
                        }) {
                            ButtonContentTwo()
                        }
                    } else {
                        Button(action: {
                            if self.currentPageIndex+1 == self.subviews.count {
                                self.currentPageIndex = 0
                            } else {
                                self.currentPageIndex += 1
                            }
                        }) {
                            ButtonContentTwo()
                        }
                    }
            } .padding(.horizontal, 80)
        }
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView().environmentObject(ViewRouter())
    }
}
