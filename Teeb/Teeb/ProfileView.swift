//
//  ProfileView.swift
//  Teeb
//
//  Created by Jamal Al-kandari on 06/09/2022.
//

import SwiftUI

struct ProfileView: View { // Struct -->

    var body: some View { // Body -->
        
        
        VStack { // Zstack -->
           
            ScrollView{ // Scroll View -->
            
            ZStack{ // Zstack -->
                Color(#colorLiteral(red: 0.6868260503, green: 0.5022583008, blue: 0, alpha: 1)).ignoresSafeArea()
                
                VStack{ // Vstack -->
                    
                    Image(systemName: "person.circle")
                        .foregroundColor(.white)
                        .font(.system(size: 150))
                    
                    Spacer()
                    
                   
                        VStack{
                            Text("\(MyAccount?.FirstName ?? "") \(MyAccount?.LastName ?? "")")
                                .font(.system(size: 40, design: .serif))
                                .foregroundColor(.white)
                                Spacer()
                            
                            Text("\(MyAccount?.Email ?? "")")
                                .font(.system(size: 25))
                                .foregroundColor(.white)
                            
                            
                            Text("\(MyAccount?.PhoneNum ?? "")")
                                .font(.system(size: 25))
                                .foregroundColor(.white)

                            
                        }
                        
                  
                    
                }.padding()
                // Vstack <--
                
                
                
            } // Zstack <--
        
          
                
                
                
               
                    
                ForEach (MyAccount?.adress ?? []) { adress in // For Each Adress -->
                        
                        ZStack {
                            Color("white")
                            VStack{ // Vstack -->
                                
                               Text("Defult Adress:-")
                                    .font(.system(size: 30, design: .serif).bold())
                                
                                
                                HStack{
                                    Spacer()
                                    Text("State: \(adress.state)")
                                        .font(.system(size: 20))
                                        Spacer()
                                    Text("Area: \(adress.area)")
                                        .font(.system(size: 20))
                                    Spacer()

                                }.padding()
                                HStack{
                                    Spacer()
                                    Text("Block: \(adress.block)")
                                        .font(.system(size: 20))
                                        Spacer()
                                    Text("Street: \(adress.street)")
                                        .font(.system(size: 20))
                                    Spacer()

                                }.padding()
                                HStack{
                                    Spacer()
                                    Text("House: \(adress.house)")
                                        .font(.system(size: 20))
                                    Spacer()
                                    Text("Floor: \(adress.floor)")
                                        .font(.system(size: 20))
                                    Spacer()

                                }.padding()
                                HStack{
                                    
                                    Spacer()
                                    Text("Apartment: \(adress.apartment)")
                                        .font(.system(size: 20))
                                        Spacer()
                                }.padding()
                                
                            } // Vstack <--
                            .frame(width: 350, height: 400)
                        .foregroundColor(Color(#colorLiteral(red: 0.6868260503, green: 0.5022583008, blue: 0, alpha: 1)))
                        }
                        
                     
                        
                    } // For Each Adress <--
                    
              
                        
                      
                        
                        
                 
                
                
                
            } // Scroll View <--
            
            
            
            
        } // Zstack <--
        
        
    } // Body <--
    
    
} // Struct <--

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 12 Pro")
    }
}
