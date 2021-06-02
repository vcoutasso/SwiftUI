//
//  utils.swift
//  Day03
//
//  Created by Vinícius Couto on 02/06/21.
//

import Foundation
import SwiftUI

// Reference: https://stackoverflow.com/questions/56760335/round-specific-corners-swiftui/58606176#58606176
struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}
