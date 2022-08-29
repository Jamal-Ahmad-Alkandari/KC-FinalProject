//
//  ShopsModle.swift
//  Teeb
//
//  Created by Jamal Al-kandari on 28/08/2022.
//

import Foundation

struct ShopsModle : Identifiable {
    
    let id = UUID()
    
    var name : String
    var logo : String
    
    var products : [ProductModle]
    
    
}

//var jakoboud = ShopsModle(name: "jakob", logo: "oud", products: [ProductModle(productImage: <#T##String#>, productName: <#T##String#>, price: <#T##Double#>)])

var Terengganu = ShopsModle(name: "Terengganu", logo: "Terengganu logo", products: [
    ProductModle(productImage: "جوره دبل سوبر", productName: "جوره دبل سوبر", price: 25),
    ProductModle(productImage: "سيلاني شوشني", productName: "سيلاني شوشني", price: 170),
    ProductModle(productImage: "سيوفي أسود", productName: "سيوفي أسود", price: 20),
    ProductModle(productImage: "فلبيني دبل فيس", productName: "فلبيني دبل فيس", price: 200)
                                                                                   ])
var shops = [Terengganu]




