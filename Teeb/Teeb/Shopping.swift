//
//  Shopping.swift
//  Teeb
//
//  Created by Jamal Al-kandari on 28/08/2022.
//

import SwiftUI

struct Shopping: View { // struct -->
    
    
    var body: some View { // Body -->
        
        
        
        VStack { // Vstack -->
            
            
            ForEach (shops) { shop in // For Each -->
                HStack{ // Hstack -->
                    
                    Image(shop.logo)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100 )
                        .padding()
                    Spacer()
                    Text(shop.name)
                        .font(.system(size: 30))
                    Spacer()
                    
                    
                    
                    
                } // Hstack <--
            }
            
            
            ScrollView{ // List -->
                
                ForEach (shops) { shop in // For Each -->
                    
                    ForEach (shop.products) { product in  // Product For Each -->
                        
                        
                   
                    
                    
                    HStack{ // Hstack -->
                        
                        Image(product.productImage)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100 )
                        Spacer()
                        
                        Text(product.productName)
                            .font(.system(size: 20))
                        Spacer()
                        
                        Text("\(product.price, specifier: "%.3f") K.D")
                        Spacer()
                        
                        Image(systemName: "plus.circle")
                        
                    }// Hstack <--
                    
                    } // Product For Each <--
                    
                } // For Each <--
                
                
               
                
            }.padding() // List <--
            
            HStack{
                
                Image(systemName: "cart")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .background(Color(#colorLiteral(red: 0.6594367623, green: 0.5036250353, blue: 0.05267035216, alpha: 1)))
                    .frame(width: 60, height: 60)
                    .cornerRadius(20)
                    .padding()
                Spacer()
                
                
            }
            
           
                
            
            
        } // Vstack <--
        
    } // Body <--
    
    
} // struct <--

struct Shopping_Previews: PreviewProvider {
    static var previews: some View {
        Shopping()
    }
}
