//
//  ShopsModle.swift
//  Teeb
//
//  Created by Jamal Al-kandari on 28/08/2022.
//

import Foundation

struct ShopsModle : Identifiable {
    
    var id = UUID()
    
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

var WoodChips = ShopsModle(name: "Wood Chips", logo: "Wood Chips logo", products:[
        ProductModle (productImage: "بول موري", productName: "بول موري", price: 15),
        ProductModle(productImage: "تايلندي للمناسبات", productName: "تايلندي للمناسبات", price: 20),
        ProductModle(productImage: "تراد للمناسبات", productName: "تراد للمناسبات", price: 20),
        ProductModle(productImage: "تراد يومي شخصي", productName: "تراد يومي شخصي", price: 10),
        ProductModle(productImage: "سيوفي شخصي", productName: "سيوفي شخصي", price: 9),
        ProductModle(productImage: "لاوسي مميز", productName: "لاوسي مميز", price: 13),

])

var kinnah = ShopsModle(name: "Kinnah", logo: "Kinnah logo", products: [
    ProductModle(productImage: "بيبي سيلاني", productName: "بيبي سيلاني", price: 20),
    ProductModle(productImage: "فلبيني جواهر", productName: "فلبيني جواهر", price: 80),
    ProductModle(productImage: "سيلاني كلوانا قواقع", productName: "سيلاني كلوانا قواقع", price: 80),
    ProductModle(productImage: "رويال موري", productName: "رويال موري", price: 30),
    ProductModle(productImage: "فلبيني السعادة", productName: "فلبيني السعادة", price: 90),
    ProductModle(productImage: "كمبودي الأجداد", productName: "كمبودي الأجداد", price: 180),
    ProductModle(productImage: "تراد تربل سوبر", productName: "تراد تربل سوبر", price: 30),
    ProductModle(productImage: "سيوفي هندي", productName: "سيوفي هندي", price: 15),
    ProductModle(productImage: "كمبودي", productName: "كمبودي", price: 250)
    ])

var KJ = ShopsModle(name: "Kesra & Jamra", logo: "Kesra & Jamra logo", products:[
    ProductModle(productImage: "البونتيانك", productName: "البونتيانك", price: 25),
    ProductModle(productImage: "السيوفي", productName: "السيوفي", price: 15),
    ProductModle(productImage: "القرميد", productName: "القرميد", price: 10),
    ProductModle(productImage: "الكاوياي", productName: "الكاوياي", price: 40),
                        ])


//// القرميد

var shops = [Terengganu , WoodChips, kinnah, KJ]




