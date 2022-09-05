//
//  AdrtessModle.swift
//  Teeb
//
//  Created by Jamal Al-kandari on 05/09/2022.
//

import Foundation
struct AdressModle: Identifiable {
    
    let id = UUID()
    
    
    var state : String
    var area : String
    var block : Int
    var street : String
    var house : Int
    var floor : Int
    var apartment : Int

}

