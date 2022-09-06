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
    @State var block : String
    @State var street : String
    @State var house : String
    @State var floor : String
    @State var apartment : String
    
    @State var House = false
    
    @State var selected = "house"
    @State var selected1 = "building.2"
    
    
    @State private var showingAlert = false

    
    @Environment(\.dismiss) private var dismiss
    
    
    
    
    var body: some View { // Body -->
        
        
        ZStack{ // Zstack -->
            
            Color(#colorLiteral(red: 0.6594367623, green: 0.5036250353, blue: 0.05267035216, alpha: 1))
                .ignoresSafeArea()
            
           
                ScrollView{ // Scroll View -->
                    
                    TextField("First Name", text: $FirstName)
                        .textFieldStyle(.roundedBorder)
                        .font(.system(size: 25))
                        .frame(width: 350)
                        .cornerRadius(5)
                    
                    TextField("Last Name", text: $LastName)
                        .textFieldStyle(.roundedBorder)
                        .font(.system(size: 25))
                        .frame(width: 350)
                        .cornerRadius(5)
                    
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
                    
                    SecureField("Confirm Password", text: $ConPass)
                        .textFieldStyle(.roundedBorder)
                        .font(.system(size: 25))
                        .frame(width: 350)
                        .cornerRadius(5)
                    
                    TextField("Phone Number", text: $PhoneNum)
                        .textFieldStyle(.roundedBorder)
                        .font(.system(size: 25))
                        .frame(width: 350)
                        .cornerRadius(5)
                        .keyboardType(.phonePad)
                    
                    VStack{ // Address Stack -->
                        
                        HStack { // Hstack -->
                            Image(systemName: selected)
                                .padding()
                                .foregroundColor(.white)
                                .font(.system(size: 35))
                                .background(Color.white.opacity(0.26))
                                .cornerRadius(10)
                                .onTapGesture {
                                    House = true
                                    selected = "house.fill"
                                    selected1 = "building.2"
                                    
                                }
                               
                            
                            
                            Image(systemName: selected1)
                                .padding()
                                .foregroundColor(.white)
                                .font(.system(size: 35))
                                .background(Color.white.opacity(0.26))
                                .cornerRadius(10)
                                .onTapGesture {
                                    House = false
                                    selected1 = "building.2.fill"
                                    selected = "house"
                                }
                            
                          
                            
                        } // Hstack <--
                        
                        HStack{ // Hstack -->
                            TextField("State", text: $state)
                                .textFieldStyle(.roundedBorder)
                                .font(.system(size: 25))
                                .frame(width: 130)
                                .cornerRadius(5)
                            
                            TextField("Area", text: $area)
                                .textFieldStyle(.roundedBorder)
                                .font(.system(size: 25))
                                .frame(width: 200)
                                .cornerRadius(5)
                            
                        } // Hstack <--
                        
                        HStack{ // Hstack -->
                            TextField("Block", text: $block)
                                .textFieldStyle(.roundedBorder)
                                .font(.system(size: 25))
                                .frame(width: 85)
                                .cornerRadius(5)
                                .keyboardType(.numberPad)
                            
                            TextField("Street", text: $street)
                                .textFieldStyle(.roundedBorder)
                                .font(.system(size: 25))
                                .frame(width: 250)
                                .cornerRadius(5)
                            
                        } // Hstack <--
                        
                        HStack{ // Hstack -->
                            TextField("House", text: $house)
                                .textFieldStyle(.roundedBorder)
                                .font(.system(size: 25))
                                .frame(width: 170)
                                .cornerRadius(5)
                                .keyboardType(.numberPad)
                            
                        } // Hstack <--
                        
                        if House == false {
                            HStack{ // Hstack -->
                                TextField("Floor", text: $floor)
                                    .textFieldStyle(.roundedBorder)
                                    .font(.system(size: 25))
                                    .frame(width: 170)
                                    .cornerRadius(5)
                                    .keyboardType(.numberPad)
                                
                                TextField("Apartment", text: $apartment)
                                    .textFieldStyle(.roundedBorder)
                                    .font(.system(size: 25))
                                    .frame(width: 170)
                                    .cornerRadius(5)
                                    .keyboardType(.numberPad)
                                
                            }
                        } else {
                            /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                        } // Hstack <--
                        
                        
                    } // Address Stack <--
                    
                    Spacer()
                    
                    Text("Set Profile")
                        .font(.system(size:30, design: .serif))
                        .foregroundColor(.white)
                        .padding()
                        .background(Color(#colorLiteral(red: 0.3985515237, green: 0.277300179, blue: 0.0639796108, alpha: 1)).opacity(0.85))
                        .cornerRadius(10)
                        .onTapGesture {
                          
                            
                            
                            if Password != ConPass { // if -->
                                showingAlert.toggle()
                            } // if <--
                            else{
                             
                                
                                accounts.append(AccountModle(FirstName: FirstName, LastName: LastName, Email: Email, Password: Password, ConPass: ConPass, PhoneNum: PhoneNum, adress: [AdressModle(state: state, area: area, block: block, street: street, house: house, floor: floor, apartment: apartment)]))
                                
                                dismiss()
                                
                                
                            }
                       
                            
                         
                            
                        }
                        .alert(isPresented: $showingAlert){ // Alert -->
                            Alert(title: Text ("Something went wrong"),
                            message:
                            Text("Please Confirm Your Password"),
                                  dismissButton: .default (Text ("Dismiss")) )} // Alert <--
                    
                    
                      
                }
                // Scroll View <--
                
              

            
        } // Zstack <--
        
        
        
        
    } // Body <--
    
    
    
} // Struct <--

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp(Email: .constant(""), Password: .constant(""), PhoneNum: "", state: "", area: "", block: "", street: "", house: "", floor: "", apartment: "")
            .previewDevice("iPhone 12 Pro")
            
    }
}
