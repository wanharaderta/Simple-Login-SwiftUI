//
//  LoginView.swift
//  simple login
//
//  Created by Wanhar on 01/06/20.
//  Copyright © 2020 Wanhar. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    
    @State var user = ""
    @State var pass = ""
    
    var body: some View {
        ZStack {
            
            Color.orange.opacity(0.10).edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 0) {
                Image("rachid-oucharia-2d1-OSHkHXM-unsplash")
                    .resizable()
                
                ZStack(alignment:.topLeading){
                    VStack {
                        HStack{
                            Text("Sign In").fontWeight(.heavy).font(.largeTitle).padding([.top,.bottom],20)
                        }
                        
                        VStack(alignment: .leading) {
                            Text("Username").font(.headline).fontWeight(.light).foregroundColor(Color.init(.label).opacity(0.75))
                            HStack{
                                TextField("Enter Your Username", text: $user)
                            }
                            
                            Divider()
                        }.padding(.bottom, 15)
                        
                        VStack(alignment: .leading) {
                            Text("Password").font(.headline).fontWeight(.light).foregroundColor(Color.init(.label).opacity(0.75))
                            HStack{
                                SecureField("Enter Your Password", text: $pass)
                            }
                            
                            Divider()
                        }
                        
                        Button(action: {
                            //action
                        }){
                            Text("Sign In").foregroundColor(.white).frame(width: UIScreen.main.bounds.width - 120).padding()
                        }.background(Color.orange)
                            .clipShape(Capsule())
                            .padding(.top, 45)
                        
                        VStack{
                            
                            Text("(or)").foregroundColor(Color.gray.opacity(0.5)).padding(.top,30)
                            
                            GoogleSignView().frame(width: 100, height: 55)
                            
                            HStack(spacing: 8){
                                Text("Don't Have An Account ?").foregroundColor(Color.black.opacity(0.5))
                                
                                Button(action: {
                                    //action
                                }) {
                                    Text("Sign Up")
                                }.foregroundColor(.blue)
                                
                            }.padding(.top, 25)
                            
                        }
                        
                    }
                    .padding(.horizontal, 30)
                    
                    .background(CustomShape().fill(Color.white))
                    .clipShape(Corners())
                    
                }.offset(y: -40)
                Spacer()
            }
            
            
        }.edgesIgnoringSafeArea(.top)
            .animation(.default)
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
