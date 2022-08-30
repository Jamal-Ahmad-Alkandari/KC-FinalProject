//
//  CartPage.swift
//  Teeb
//
//  Created by Jamal Al-kandari on 30/08/2022.
//

import SwiftUI

struct CartPage: View { // Struct -->
    
   // @EnvironmentObject var cartManage : CartManager
    
    var body: some View { // Body -->
        
        
        ScrollView{ // ScrollView -->
            
            Text("Your Cart Is Empty")
            
            
            
        }
        .navigationTitle(Text("My Cart"))
        .padding(.top)
        // ScrollView <--
        
        
        
    } // Body <--
    
    
} // Struct <--

struct CartPage_Previews: PreviewProvider {
    static var previews: some View {
        
        CartPage()
          //  .environmentObject(CartManager())
        
    }
}
