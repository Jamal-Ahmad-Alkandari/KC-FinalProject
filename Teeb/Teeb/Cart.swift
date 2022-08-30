//
//  Cart.swift
//  Teeb
//
//  Created by Jamal Al-kandari on 29/08/2022.
//

import SwiftUI

struct Cart: View { // Struct -->
    
    var productNum : Int
    
    var body: some View { // Body -->
        
        
        ZStack(alignment: .topTrailing){ // Zstack -->
            
            Image(systemName: "cart")
                .resizable()
                .scaledToFit()
                .padding()
                .foregroundColor(.black)
                .frame(width: 60, height: 60)
                .cornerRadius(20)
            
            if productNum > 0 { // if -->
                
                Text("\(productNum)")
                    .font(.system(size: 15))
                    .font(.caption2)
                    .foregroundColor(.white)
                    .frame (width: 15, height: 15)
                    .background(Color(#colorLiteral(red: 0.8028917313, green: 0, blue: 0, alpha: 1)))
                    .cornerRadius(50)
                   
              
                
            } // if <--
            
            
            
        }
        
        
        // Zstack <--
        
        
    } // Body <--
    
    
} // Struct <--

struct Cart_Previews: PreviewProvider {
    static var previews: some View {
        Cart(productNum: 1)
    }
}
