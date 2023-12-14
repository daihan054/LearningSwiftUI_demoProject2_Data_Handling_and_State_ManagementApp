//
//  CustomSpacing.swift
//  LearningSwiftUI-demoProject2-Data Handling and State Management
//
//  Created by REVE Systems on 14/12/23.
//

import SwiftUI

struct CustomSpacing: ViewModifier {
    var height: CGFloat

    func body(content: Content) -> some View {
        content
            .padding(.bottom, height)
    }
}

extension View {
    func customSpacing(_ height: CGFloat) -> some View {
        self.modifier(CustomSpacing(height: height))
    }
}
