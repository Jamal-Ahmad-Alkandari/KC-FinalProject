//
//  SignUp.swift
//  Teeb
//
//  Created by Jamal Al-kandari on 04/09/2022.
//

import SwiftUI

struct SignUp: View { // Struct -->
    
    @State var FirstName = ""
    @State var LastName = ""
    @Binding var Email : String
    @Binding var Password : String
    @State var ConPass = ""
    @State var PhoneNum : String
    @State var state : String
    @State var area : String
    @State var block : Int
    @State var street : String
    @State var house : Int
    @State var floor : Int
    @State var apartment : Int
    
    
    
    
    var body: some View { // Body -->
        
        
        ZStack{ // Zstack -->
            
            Color(#colorLiteral(red: 0.6594367623, green: 0.5036250353, blue: 0.05267035216, alpha: 1))
                .ignoresSafeArea()
            
            VStack{ // Vstack -->
                
                TextField("First Name", text: $FirstName)
                    .padding()
                    .background(.white)
                .cornerRadius(5)
                
                TextField("Last Name", text: $LastName)
                    .padding()
                    .background(.white)
                .cornerRadius(5)
                
                TextField("E-mail", text: $Email)
                    .padding()
                    .background(.white)
                .cornerRadius(5)
                
                SecureField("Password", text: $Password)
                     .padding()
                     .background(.white)
                     .cornerRadius(5)
                
                SecureField("Confirm Password", text: $ConPass)
                     .padding()
                     .background(.white)
                     .cornerRadius(5)
                
                TextField("Phone Number", text: $PhoneNum)
                    .padding()
                    .background(.white)
                .cornerRadius(5)
                
                
                VStack{ // Address Stack -->
                    
                    HStack {
                        Image(systemName: "house")
                            .padding()
                            .foregroundColor(.white)
                            .font(.system(size: 35))
                            .background(Color.white.opacity(0.26))
                            .cornerRadius(10)
                        
                        Image(systemName: "building.2")
                            .padding()
                            .foregroundColor(.white)
                            .font(.system(size: 35))
                            .background(Color.white.opacity(0.26))
                            .cornerRadius(10)
                    }
                    
                   
                    
                    
                    
                } // Address Stack <--
                
                Spacer()
                
                NavigationLink (destination: {
                    ContentView(Email: Email, Password: Password)
                }, label: {
                    Text("Set Profile")
                       .font(.system(size:30, design: .serif))
                       .foregroundColor(.white)
                       .padding()
                       .background(Color(#colorLiteral(red: 0.3985515237, green: 0.277300179, blue: 0.0639796108, alpha: 1)).opacity(0.85))
                       .cornerRadius(10)
                })
                
                
            }
            .padding()
            // Vstack <--
            
            
            
         
                        
            
            
            
            
            
        } // Zstack <--
        
     
        
        
    } // Body <--
    
    
    
} // Struct <--

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp(Email: .constant(""), Password: .constant(""), PhoneNum: "", state: "", area: "", block: 1, street: "", house: 1, floor: 1, apartment: 1)
    }
}
