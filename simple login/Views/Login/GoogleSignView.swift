//
//  GoogleSignView.swift
//  simple login
//
//  Created by Wanhar on 01/06/20.
//  Copyright © 2020 Wanhar. All rights reserved.
//

import SwiftUI
import Firebase
import GoogleSignIn

struct GoogleSignView : UIViewRepresentable {
    
    func makeUIView(context: UIViewRepresentableContext<GoogleSignView>) -> GIDSignInButton {
        
        let button = GIDSignInButton()
        button.colorScheme = .dark
        GIDSignIn.sharedInstance()?.presentingViewController = UIApplication.shared.windows.last?.rootViewController
        return button
        
    }
    
    func updateUIView(_ uiView: GIDSignInButton, context: UIViewRepresentableContext<GoogleSignView>) {
        
        
    }
}
