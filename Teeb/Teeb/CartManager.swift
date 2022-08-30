//
//  CartManager.swift
//  Teeb
//
//  Created by Jamal Al-kandari on 30/08/2022.
//

import Foundation

class CartManager : ObservableObject{
     
    @Published private(set) var products : [ProductModle] = []
    @Published private(set) var total : Double = 0

    func AddToCart (products: ProductModle){
        
      //  products.append(ProductModle)
        total += products.price
    }
    
    
    func RemoveFromeCart (products: ProductModle){
        
       // products = products.filter{ $0.id != products.id }
        total -= products.price
    }
    
}
