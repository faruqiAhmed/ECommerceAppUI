//
//  CustomCurveShape.swift
//  ECommerceAppUI
//
//  Created by Md Omar Faruq on 9/15/21.
//

import SwiftUI

// tabCurve Shape..

struct CustomCurveShape: Shape {
    func path(in rect: CGRect) -> Path {
        return Path{path in
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: 0))
           
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
           
            
            // Center Curve..
            let mid = rect.width / 2
            path.move(to: CGPoint(x: mid - 70, y: 0))
            let to1 = CGPoint(x: mid, y: 45)
            let control1 = CGPoint(x: mid - 35, y: 0 )
            let conttrol2 = CGPoint(x: mid - 35, y: 45 )
            
            path.addCurve(to: to1, control1: control1, control2: conttrol2)
            
            let to2 = CGPoint(x: mid + 70, y: 0)
            let control3 = CGPoint(x: mid + 35, y: 45 )
            let conttrol4 = CGPoint(x: mid + 35, y: 0 )
            
            path.addCurve(to: to2, control1: control3, control2: conttrol4)
        }
    }
}

struct CustomCurveShape_Previews: PreviewProvider {
    static var previews: some View {
      BaseView()
    }
}
