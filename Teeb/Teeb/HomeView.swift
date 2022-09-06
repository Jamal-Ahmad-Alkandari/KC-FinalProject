//
//  HomeView.swift
//  Teeb
//
//  Created by Jamal Al-kandari on 28/08/2022.
//

import SwiftUI

struct HomeView: View { // Home View -->
    
    
    var body: some View { // Body -->

        ZStack {
            Color("white")
            
            VStack { // Vstack -->
                
                
                List  { // List -->
                    
                    
                    
                    
                    
                    
                    ForEach (shops) { shop in // For Each -->
                        NavigationLink {
                            Shopping(shop: shop, productNum: 0, total: 0.000  )
                            
                        } label: { // Navigation Link Lable -->
                            HStack{ // Hstack -->
                                
                                Image(shop.logo)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100 )
                                    .cornerRadius(20)
                                Spacer()
                                Text(shop.name)
                                    .font(.system(size: 20))
                                Spacer()
                                
                                
                                
                                
                            } // Hstack <--
                           
                           
                            
                        } // Navigation Link Lable <--
                        
                        
                        
                        
                        
                    } // For Each <--
                    
                    
                    
                }.listRowBackground(Color(#colorLiteral(red: 0.6868260503, green: 0.5022583008, blue: 0, alpha: 1)))
                    .navigationTitle("Teeb Stores")
                // List <--
                
                
                
                
                
            }
        }// Vstack <--
        
        
        
        
        
    } // Body <--
    
    
} // Home View <--

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewDevice("iPhone 12 Pro")
    }
}
