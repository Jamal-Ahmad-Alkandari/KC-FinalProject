//
//  Shopping.swift
//  Teeb
//
//  Created by Jamal Al-kandari on 28/08/2022.
//

import SwiftUI

struct Shopping: View { // struct -->
    
    var shop : ShopsModle
//    @StateObject var cartManager = CartManager()
//    @EnvironmentObject var cartManage : CartManager

    var body: some View { // Body -->
        
        
        
        VStack { // Vstack -->
            HStack{
                
                Image(shop.logo)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 130, height: 130)
                    .cornerRadius(20)
                Spacer()
                Text(shop.name)
                    .font(.system(size: 25))

                
            }.padding()
          
              
            
            ScrollView{ // List -->
                
               
                    
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
                            .font(.system(size: 25))
                            .foregroundColor(Color(#colorLiteral(red: 0.6594367623, green: 0.5036250353, blue: 0.05267035216, alpha: 1)))
                        
                    }
                    
                    // Hstack <--
                    
                    } // Product For Each <--
                    
               
               // .navigationTitle("Shopping Page")
              
                
               
                
            }.padding() // List <--
            
           
            HStack{ // Hstack -->
                
            } // Hstack <--
            .toolbar{ // Tool Bar -->
                
                NavigationLink{
                    CartPage()
                } label: {
                    Cart(productNum: 1)
                }
                
            } // Tool Bar <--
           
                
            
            
        }
        // Vstack <--
        
    } // Body <--
    
    
} // struct <--

struct Shopping_Previews: PreviewProvider {
    static var previews: some View {
        
        Shopping(shop: ShopsModle(name: "Terengganu", logo: "Terengganu logo", products: [
            ProductModle(productImage: "جوره دبل سوبر", productName: "جوره دبل سوبر", price: 25),
            ProductModle(productImage: "سيلاني شوشني", productName: "سيلاني شوشني", price: 170),
            ProductModle(productImage: "سيوفي أسود", productName: "سيوفي أسود", price: 20),
            ProductModle(productImage: "فلبيني دبل فيس", productName: "فلبيني دبل فيس", price: 200)
                                                                                           ])
        )
        //.environmentObject(CartManager())
    }
}
