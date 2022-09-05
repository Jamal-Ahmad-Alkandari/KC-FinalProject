//
//  ContentView.swift
//  Teeb
//
//  Created by Jamal Al-kandari on 28/08/2022.
//

import SwiftUI

struct ContentView: View { // Content View -->
    
    @State var Email : String
    @State var Password : String
    
    
    var body: some View { // Body -->
        
        NavigationView{ // Navigation View -->
            
            
            
            
            
            // Lemonada-VariableFont_wght
            // PlayfairDisplay-VariableFont_wght
            // YanoneKaffeesatz-VariableFont_wght
            // Cairo-VariableFont_wght
            
            
            ZStack{ // Zstack -->
                
                Color(#colorLiteral(red: 0.6594367623, green: 0.5036250353, blue: 0.05267035216, alpha: 1))
                
                    .ignoresSafeArea()
                
                
                VStack { // Vstack -->
                    
                    
                    Text("Welcome To Teeb")
                        // .font(.custom("Cairo-VariableFont_wght", size: 40))
                        .font(.system(size: 40, design: .serif))
                        .padding()
                        .foregroundColor(.white)
                    
                    Image("Teeb Icon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 300 )
                        .cornerRadius(200)
                    Spacer()
                    
                 
                    
                    VStack { // Vstack -->
                        TextField("E-mail", text: $Email)
                            .padding()
                            .background(.white)
                        .cornerRadius(5)
               
                    
                    SecureField("Password", text: $Password)
                         .padding()
                         .background(.white)
                         .cornerRadius(5)
                    } // Vstack <--

                    Spacer()
                    
                    HStack{ // Hstack -->
                        
                     
                        
                        NavigationLink(destination: HomeView().navigationTitle("Teeb Stores")){ // Navigation Link -->
                            Text("Login")
                               .font(.system(size:30, design: .serif))
                               .foregroundColor(.white)
                               .padding()
                               .background(Color(#colorLiteral(red: 0.3985515237, green: 0.277300179, blue: 0.0639796108, alpha: 1)).opacity(0.85))
                               .cornerRadius(10)
                            

                        } // Navigation Link <--
                        
                        NavigationLink(destination: SignUp(Email: $Email, Password: $Password, PhoneNum: "", state: "", area: "", block: 1, street: "", house: 1, floor: 1, apartment: 1).navigationTitle("Sign Up")){ // Navigation Link -->
                            Text("Sign Up")
                               .font(.system(size:30, design: .serif))
                               .foregroundColor(.white)
                               .padding()
                               .background(Color(#colorLiteral(red: 0.3985515237, green: 0.277300179, blue: 0.0639796108, alpha: 1)).opacity(0.85))
                               .cornerRadius(10)
                            

                        } // Navigation Link <--
                        
                        
                    } // Hstack <--
                    
                   


                        
                
                    
                    
                }
                .padding()
                // Vstack <--
                
                
                
                
            } // Zstack <--
            
            
           // .navigationBarTitleDisplayMode(.inline)
            
        } // Navigation View <--
        
        
       
    } // Body <--
} // Content View <--

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(Email: "", Password: "")
            .previewDevice("iPhone 12 Pro")
    }
}
