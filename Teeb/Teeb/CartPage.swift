//
//  CartPage.swift
//  Teeb
//
//  Created by Jamal Al-kandari on 30/08/2022.
//

import SwiftUI

struct CartPage: View { // Struct -->
    
   // @EnvironmentObject var cartManage : CartManager
    
    
    @State var productNum : Int
    @Binding var total : Double
    @State var removeItem = 0
    
    
    @Binding var Items : [ProductModle]
    var shop : ShopsModle
    
    
    
    
    var body: some View { // Body -->
        
        
        VStack { // Vstack -->
            
            
            
            
            ScrollView{ // Scroll View -->
                
                
                
                ForEach (Items) { product in  // Product For Each -->
                        
                        
                   
                    
                    
                    HStack{ // Hstack -->
                        
                        Image(product.productImage)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 100, height: 100 )
                            .cornerRadius(10)
                        Spacer()
                        
                        Text(product.productName)
                            .font(.system(size: 20))
                        Spacer()
                        
                        Text("\(product.price, specifier: "%.3f") K.D")
                        Spacer()
                        
                        Image(systemName: "trash")
                            .font(.system(size: 25))
                            .foregroundColor(Color(#colorLiteral(red: 0.6594367623, green: 0.5036250353, blue: 0.05267035216, alpha: 1)))
                            .onTapGesture { // On Tap -->
                                
                                total -= product.price
                                productNum -= 1
                                
                                
                                if let index = Items.firstIndex(of: product){
                                    
                                    Items.remove(at: index)
                                    
                                }
                                else{
                                    print("No Item")
                                }
                                
                                
                                
                            } // On Tap <--
                        
                    } // Hstack <--
                    
                    } // Product For Each <--
                    
               
           
              
                
               
                
            }.padding()  // ScrollView <--
            .navigationTitle(Text("My Cart"))
        .padding(.top)
            
            
            Text("Total Amount : \(total, specifier: "%.3f") K.D")
                .padding()
                .font(.system(size: 25))
                .background(Color(#colorLiteral(red: 0.6594367623, green: 0.5036250353, blue: 0.05267035216, alpha: 1)))
                .foregroundColor(.white)
                .cornerRadius(10)
            Spacer()
            
            
        } // Vstack <--
       
        
        
        
    } // Body <--
    
    
} // Struct <--

//struct CartPage_Previews: PreviewProvider {
//    static var previews: some View {
//
//        CartPage(productNum: ShopsModle(name: "Terengganu", logo: "Terengganu logo", products: [
//            ProductModle(productImage: "جوره دبل سوبر", productName: "جوره دبل سوبر", price: 25),
//            ProductModle(productImage: "سيلاني شوشني", productName: "سيلاني شوشني", price: 170),
//            ProductModle(productImage: "سيوفي أسود", productName: "سيوفي أسود", price: 20),
//            ProductModle(productImage: "فلبيني دبل فيس", productName: "فلبيني دبل فيس", price: 200)
//        ]), total: 0, removeItem: 0.000, Items: [ ProductModle(productImage: "فلبيني دبل فيس", productName: "فلبيني دبل فيس", price: 200)])
//          //  .environmentObject(CartManager())
//
//    }
//}
