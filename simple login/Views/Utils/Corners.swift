//
//  Corners.swift
//  simple login
//
//  Created by Wanhar on 01/06/20.
//  Copyright © 2020 Wanhar. All rights reserved.
//

import SwiftUI

struct Corners : Shape {
    
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft,.topRight], cornerRadii: CGSize(width: 35, height: 35))
        
        return Path(path.cgPath)
    }
}
