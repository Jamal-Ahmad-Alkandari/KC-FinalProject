//
//  ContentView.swift
//  Teeb
//
//  Created by Jamal Al-kandari on 28/08/2022.
//

import SwiftUI

struct ContentView: View { // Content View -->
    
    
    
    
    var body: some View { // Body -->
        
        NavigationView{ // Navigation View -->
            
            
            
            
            
            // Lemonada-VariableFont_wght
            // PlayfairDisplay-VariableFont_wght
            // YanoneKaffeesatz-VariableFont_wght
            // Cairo-VariableFont_wght
            
            
            ZStack{ // Zstack -->
                
                Color(#colorLiteral(red: 0.6594367623, green: 0.5036250353, blue: 0.05267035216, alpha: 1))
                
                    .ignoresSafeArea()
                
                
                VStack { // Vstack -->
                    
                    
                    Text("Welcome To Teeb")
                        // .font(.custom("Cairo-VariableFont_wght", size: 40))
                        .font(.system(size: 40, design: .serif))
                        .padding()
                        .foregroundColor(.white)
                    
                    Image("Teeb Icon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 300 )
                        .cornerRadius(200)
                    Spacer()
                    
                    
                    NavigationLink(destination: HomeView().navigationTitle("Teeb Stores")){ // Navigation Link -->
                        Text("Click Here To Continue")
                           .font(.system(size:30, design: .serif))
                           .padding()
                           .background(.white.opacity(0.4))
                           .cornerRadius(20)
                        
                        
                    } // Navigation Link <--
                    Spacer()
                    


                        
                
                    
                    
                } // Vstack <--
                
                
                
                
            } // Zstack <--
            
            
            
            
        } // Navigation View <--
        
        
       
    } // Body <--
} // Content View <--

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro")
    }
}
