//
//  CheckOut.swift
//  Teeb
//
//  Created by Jamal Al-kandari on 03/09/2022.
//

import SwiftUI

struct CheckOut: View {
    
    @Binding var total : Double
    @Binding var Items : [ProductModle]
    var shop : ShopsModle
    
    var body: some View {
        
        ZStack { // Zstack -->
            Color(#colorLiteral(red: 0.6594367623, green: 0.5036250353, blue: 0.05267035216, alpha: 1))
                .ignoresSafeArea()
            
            VStack{ // Vstack -->
                Image("Thanks Image")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 250, height: 250)
                
                ScrollView{ // Scroll View -->
                    ForEach (Items) { product in  // Product For Each -->
                        
                        
                        HStack{
                            
                            Text(product.productName)
                                .font(.system(size: 20))
                                .foregroundColor(.white)
                            Spacer()
                            
                            Text("\(product.price, specifier: "%.3f") K.D")
                                .font(.system(size: 20))
                                .foregroundColor(.white)
                            
                        }
                        .padding()
                        .background(Color.white.opacity(0.26))
                        
                        
                        
                    } // Product For Each <--
                    
                } // Scroll View <--
                Text("Total Amount : \(total, specifier: "%.3f") K.D")
                    .fontWeight(.heavy)
                    .font(.system(size: 25))
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .frame(width: 400, height: 100)
                    .foregroundColor(Color(#colorLiteral(red: 0.6594367623, green: 0.5036250353, blue: 0.05267035216, alpha: 1)))
                
                
            } // Vstack <--
            
            
            
            
        } // Zstack <--
        
        
    }
}

struct CheckOut_Previews: PreviewProvider {
    static var previews: some View {
        CheckOut(total: .constant(0.000), Items: .constant([ProductModle(productImage: "جوره دبل سوبر", productName: "جوره دبل سوبر", price: 25)]), shop: ShopsModle(name: "Terengganu", logo: "Terengganu logo", products: []))
            .previewDevice("iPhone 12 Pro")
    }
}
