//
//  CartPage.swift
//  Teeb
//
//  Created by Jamal Al-kandari on 30/08/2022.
//

import SwiftUI
import PassKit

struct CartPage: View { // Struct -->
    
   // @EnvironmentObject var cartManage : CartManager
    
    
    @Binding var productNum : Int
    @Binding var total : Double
    @State var removeItem = 0
 
    @Binding var Items : [ProductModle]
    
    
    var shop : ShopsModle
    var action: () -> Void
    
    
    
    
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
                                    
                                  
                                    
                                    if let index = Items.firstIndex(of: product){ // if -->
                                        
                                        Items.remove(at: index)
                                        
                                    } // if <--
                                    else{ // else -->
                                        print("No Item")
                                    } // else <--
                                    
                                    total -= product.price
                                    productNum -= 1
                                    

                                } // On Tap <--
                            
                        } // Hstack <--
                        
                        } // Product For Each <--
                        
                   
               
                  
                    
                   
                    
                }.padding()  // ScrollView <--
                .navigationTitle(Text("My Cart"))
            .padding(.top)
                
                VStack{ // Vstack -->
                    
                    HStack{ // Product Amount Stack -->
                        if productNum >= 0 {
                            Text("Product Amount :")
                                .font(.system(size: 20))
                                .foregroundColor(Color(#colorLiteral(red: 0.6594367623, green: 0.5036250353, blue: 0.05267035216, alpha: 1)))
                            .cornerRadius(10)
                            
                            Spacer()
                            
                            Text("\(productNum)")
                                .font(.system(size: 20))
                                .foregroundColor(Color(#colorLiteral(red: 0.6594367623, green: 0.5036250353, blue: 0.05267035216, alpha: 1)))
                            .cornerRadius(10)
                        }
                    }.padding()
                    // Product Amount Stack <--
                  
                    HStack{ // Total Stack -->
                        Text("Total Amount :")
                            .font(.system(size: 20))
                            .foregroundColor(Color(#colorLiteral(red: 0.6594367623, green: 0.5036250353, blue: 0.05267035216, alpha: 1)))
                            .cornerRadius(10)
                        
                        Spacer()
                        
                        Text("\(total, specifier: "%.3f") K.D")
                            .font(.system(size: 20))
                            .foregroundColor(Color(#colorLiteral(red: 0.6594367623, green: 0.5036250353, blue: 0.05267035216, alpha: 1)))
                            .cornerRadius(10)
                    }.padding()
                    // Total Stack <--

                }
                .padding()
                // Vstack <--
                
                
                NavigationLink {
                    CheckOut(total: $total, Items: $Items, shop: shop)
                }label : {
                    Text("Check out")
                        .padding()
                        .font(.system(size: 25))
                        .frame(width: 350)
                        .background(Color(#colorLiteral(red: 0.6594367623, green: 0.5036250353, blue: 0.05267035216, alpha: 1)))
                        .foregroundColor(.white)
                    .cornerRadius(12)
                }
         
            }// Vstack <--
       
        
        
        
    } // Body <--
    
    
} // Struct <--

struct CartPage_Previews: PreviewProvider {
    static var previews: some View {

        CartPage(productNum: .constant(0), total: .constant(0.000), Items: .constant([ProductModle(productImage: "جوره دبل سوبر", productName: "جوره دبل سوبر", price: 25)]), shop: ShopsModle(name: "Terengganu", logo: "Terengganu logo", products: []), action: {})
            
          //  .environmentObject(CartManager())

    }
}

//extension PaymentButton {
//    struct Representable:  UIViewRepresentable {
//
//    }
//}
