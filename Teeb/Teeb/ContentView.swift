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
            
            ZStack{ // Zstack -->
                
                Color(#colorLiteral(red: 0.6868261695, green: 0.5022581816, blue: 0, alpha: 1))
                    .ignoresSafeArea()
                
                
                VStack { // Vstack -->
                    Image("Teeb Icon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 300 )
                        .cornerRadius(200)
                    
                    
                    Text("Welcome to Teeb")
                        .font(.system(size: 40, design: .serif))
                        .padding()
                        .background(.white.opacity(0.4))
                        .cornerRadius(20)
                    
    //                Button {
    //                    eij
    //                } label: {
    //                    Text("Click Here")
    //                }


                
                    
                    
                } // Vstack <--
                
                
                
                
            } // Zstack <--
            
            
            
            
        } // Navigation View <--
        
        
       
    } // Body <--
} // Content View <--

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
