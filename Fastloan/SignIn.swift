//
//  SignIn.swift
//  Fastloan
//
//  Created by Nosaibah Alrajhi on 28/10/2023.
//

import SwiftUI

struct SignIn: View {
    
    @State private var username = ""
        @State private var password = ""
        @State private var showPassword = false
    var body: some View {
        
        ZStack {
            
            LinearGradient(colors: [.deepblue, .deeppurple], startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            
            VStack {
                HStack {
                    
                    Button(action: {
                    }) {
                        Image(systemName: "arrow.left")
                            .frame(width: 50, height: 50.0)
                            .foregroundColor(Color.black)
                        
                    }.frame(maxWidth:.infinity,alignment: .topLeading).frame(height: -20.0)
                    
                    
                }
                
                Text("Login").bold().padding()
                
                HStack {
                    Image(systemName: "envelope")
                        .foregroundColor(.white)
                    TextField("Enter your email",text: $username).foregroundColor(.white)
                    
                } .padding().foregroundColor(.white)
                    .background(Capsule().fill(Color.white.opacity(0.1)))
                HStack {
                    Image(systemName: "lock")
                        .foregroundColor(.white)
                    if showPassword {
                        TextField("Enter your Password",
                                  text: $password)
                    } else {
                        SecureField("Enter your Password",
                                    text: $password)
                    }
                    Button(action: { self.showPassword.toggle()}) {
                        
                        Image(systemName: "eye")
                            .foregroundColor(.white)
                    }
                }   .padding()
                    .background(Capsule().fill(Color.white.opacity(0.1)))
                Button("Forgot Password?") {
                
                }.padding().foregroundColor(.white).frame(maxWidth: .infinity, alignment: .trailing)
                
                Button(action: {
                           
                       }) {
                           Text("Login")
                               .frame(width: 350, height: 50)
                               .background(Color.white)
                               .foregroundColor(.purple)
                               .clipShape(RoundedRectangle(cornerRadius: 30))
                       }
                HStack{
                    
                    Text("Dont have an account?").foregroundColor(.gray)
                    
                    Button("Sign Up") {
                                  //      SignUpView()
                    }.foregroundColor(.white)
                }.padding()
                
                
                
                
                
                
                Spacer()
            }   .padding()
            
            
            
            
        }//vstack

        
        
        
    }
}

struct SignIn_Previews: PreviewProvider {
  static var previews: some View {
    SignIn()
  }
}
