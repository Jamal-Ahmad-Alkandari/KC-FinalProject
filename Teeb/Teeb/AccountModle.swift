//
//  AccountModle.swift
//  Teeb
//
//  Created by Jamal Al-kandari on 05/09/2022.
//

import Foundation
struct AccountModle: Identifiable{
    
    let id = UUID()
    
    
     var FirstName : String
     var LastName : String
     var Email : String
     var Password : String
     var ConPass : String
     var PhoneNum : String
    
    var adress : [AdressModle]
     
}

var accounts : [AccountModle] = []
var MyAccount : AccountModle?
