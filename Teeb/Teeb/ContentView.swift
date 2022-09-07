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
    @State private var showingAlert = false
    @State var islogin = false
    
    @State var alert = ""
    
    
   
    
    
    var body: some View { // Body -->
        
        NavigationView{ // Navigation View -->
            
            
            
            
            
            if islogin == false {
                
            
            
            
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
                            .textFieldStyle(.roundedBorder)
                            .font(.system(size: 25))
                            .frame(width: 350)
                            .cornerRadius(5)
                        
                        
                        SecureField("Password", text: $Password)
                            .textFieldStyle(.roundedBorder)
                            .font(.system(size: 25))
                            .frame(width: 350)
                            .cornerRadius(5)
                    }
                    .padding()
                    // Vstack <--
                    
                    Spacer()
                    
                    HStack{ // Hstack -->
                        
                        
                        
                       
                            Text("Login")
                                .font(.system(size:30, design: .serif))
                                .foregroundColor(.white)
                                .padding()
                                .background(Color(#colorLiteral(red: 0.3985515237, green: 0.277300179, blue: 0.0639796108, alpha: 1)).opacity(0.85))
                                .cornerRadius(10)
                                .onTapGesture { // ON Tap -->
                                    if Email == "" || Password == "" { // if -->
                                        
                                        alert = "Please Fill In The Blank Area"
                                        
                                        showingAlert.toggle()
                                    } // if <--
                                    
                                    
                                    
                                    
                                    
                                    else if Email == MyAccount?.Email && Password == MyAccount?.Password{
                                        
                                        islogin = true
                                    }
                                    
                                    
                                    else {
                                        
                                        alert = "Please Enter A Correct Email And Password"
                                        
                                        showingAlert.toggle()
                                    }
                                    
                                } // ON Tap <--
                                .alert(isPresented: $showingAlert)
                                    { // Alert -->
                                    Alert(title: Text ("Something went wrong"),
                                    message:
                                    Text(alert),
                                          dismissButton: .default (Text ("Dismiss")) )} // Alert <--
                            
                     
                        
                        NavigationLink(destination: SignUp(Email: "", Password: "", PhoneNum: "", state: "", area: "", block: "", street: "", house: "", floor: "", apartment: "").navigationTitle("Sign Up")){ // Navigation Link -->
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
                
            }
            
            else {
                tabBar()
            }
            
            
            // .navigationBarTitleDisplayMode(.inline)
            
        } // Navigation View <--
        
        
        
    } // Body <--
} // Content View <--

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(Email: "", Password: "")
            .preferredColorScheme(.light)
            .previewDevice("iPhone 12 Pro")
    }
}
