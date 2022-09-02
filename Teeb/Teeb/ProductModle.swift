//
//  ProductModle.swift
//  Teeb
//
//  Created by Jamal Al-kandari on 28/08/2022.
//

import Foundation


struct ProductModle : Identifiable, Equatable {
    let id = UUID()
    
    var productImage : String
    var productName : String
    var price : Double
    
    
}

