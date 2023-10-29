//
//  ContentView.swift
//  Fastloan
//
//  Created by Nosaibah Alrajhi on 28/10/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.deepblue, .deeppurple], startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            
            VStack{
                                Image("piggy-bank").resizable().scaledToFit().frame(width: 100,alignment: .top).colorInvert()
                Text("FastLoan").foregroundStyle(.white).bold().font(.title)
                                
                            }.frame(height: 700, alignment: .top)

            
            
            
            
            VStack{
                
                
                
                VStack{
                    
                    Text("Welcome!").foregroundColor(.white).font(.largeTitle).bold()
                    Button(action: {
                        
                    }, label: {
                        Text("Sign Up").frame(width: 350, height: 50).background(Color.white).foregroundColor(.purple).clipShape(RoundedRectangle(cornerRadius: 30)).buttonStyle(.plain)
                    })
                    HStack{
                        Text("or").foregroundColor(.white)
                        Text("Create an account").foregroundColor(.white).underline().padding(0)
                    }
                }
                
                
            }
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
      ContentView()
  }
}
