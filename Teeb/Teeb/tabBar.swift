//
//  tabBar.swift
//  Teeb
//
//  Created by Jamal Al-kandari on 06/09/2022.
//

import SwiftUI

struct tabBar: View {
    
    @State var Account : AccountModle
    @State var Adress : AdressModle
    
    
    var body: some View {
                    TabView{
                        HomeView()
                            .tabItem {
                                Image(systemName: "house")
                            }
                        ProfileView()
                            .tabItem {
                                Image(systemName: "person")
                            }
                    }
    }
}

