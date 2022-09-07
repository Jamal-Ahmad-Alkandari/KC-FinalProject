//
//  tabBar.swift
//  Teeb
//
//  Created by Jamal Al-kandari on 06/09/2022.
//

import SwiftUI

struct tabBar: View {
     
    init() {
            UITabBar.appearance().backgroundColor = UIColor(Color("bar"))
        }

    
    var body: some View {
        
        
        
        
                    TabView{
                        HomeView()
                            .tabItem {
                                Image(systemName: "house")
               
                            }.foregroundColor(.white)
                        ProfileView()
                            .tabItem {
                                Image(systemName: "person")
                              

                            }
                    }.foregroundColor(.white)
    }
}

