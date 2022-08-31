//
//  Shopping.swift
//  Teeb
//
//  Created by Jamal Al-kandari on 28/08/2022.
//

import SwiftUI

struct Shopping: View { // struct -->
    
    var shop : ShopsModle
    @State var productNum : Int
    @State var total : Double


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
                            .cornerRadius(10)
                        Spacer()
                        
                        Text(product.productName)
                            .font(.system(size: 20))
                        Spacer()
                        
                        Text("\(product.price, specifier: "%.3f") K.D")
                        Spacer()
                        
                        Image(systemName: "plus.circle")
                            .font(.system(size: 25))
                            .foregroundColor(Color(#colorLiteral(red: 0.6594367623, green: 0.5036250353, blue: 0.05267035216, alpha: 1)))
                            .onTapGesture { // On Tap -->
                                
                                total += product.price
                                productNum += 1
                            } // On Tap <--
                        
                    } // Hstack <--
                    
                    } // Product For Each <--
                    
               
           
              
                
               
                
            }.padding() // List <--
            
            
            NavigationLink {
                CartPage(shop: shop, productNum: 1, total: 0.000)
            } label: {
                HStack { // Hstack -->
                    
                    if productNum >= 0 { // if -->
                        
                        Text("\(productNum)")
                            .font(.system(size: 25))
                            .font(.caption2)
                            .foregroundColor(.white)
                            .frame (width: 40, height: 40)
                            .background(Color.white.opacity(0.15))
                            .cornerRadius(10)
                            .padding(.leading)
                           
                      
                        
                    } // if <--
            
                    Text("View Cart")
                        .font(.system(size: 25))
                        .foregroundColor(.white)
                        .padding()
                    Spacer()
                    
                    Text("\(total, specifier: "%.3f")K.D")
                        .font(.system(size: 20))
                        .foregroundColor(Color.white)
                        .padding()
                        .cornerRadius(10)
                       
                
                    
                  
                    
                       
                } // Hstack <--
                .frame(width: 370, height: 70)
                .background(Color((#colorLiteral(red: 0.6594367623, green: 0.5036250353, blue: 0.05267035216, alpha: 1))))
                .cornerRadius(10)
                .padding()
            
            }

                
               
                
                
                
                
            

            
            

            
            
            
        } // Vstack <--
        
    } // Body <--
    
    
   
    
} // struct <--

struct Shopping_Previews: PreviewProvider {
    static var previews: some View {
        
        Shopping(shop: ShopsModle(name: "Terengganu", logo: "Terengganu logo", products: [
            ProductModle(productImage: "جوره دبل سوبر", productName: "جوره دبل سوبر", price: 25),
            ProductModle(productImage: "سيلاني شوشني", productName: "سيلاني شوشني", price: 170),
            ProductModle(productImage: "سيوفي أسود", productName: "سيوفي أسود", price: 20),
            ProductModle(productImage: "فلبيني دبل فيس", productName: "فلبيني دبل فيس", price: 200)
        ]), productNum: 0, total: 0.000
        )
       
    }
}
