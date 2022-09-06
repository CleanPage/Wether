//
//  View.swift
//  Wether
//
//  Created by Егор  on 04.08.2022.
//

import SwiftUI

//MARK: BACKGROUND BLUR
extension View{
    func backgroundBlur(radius: CGFloat = 3, opaque: Bool = false) -> some View {
        self
            .background(
            Blur(radius: radius, opaque: opaque)
            )
    }
}
//MARK: INNER SHADOW
extension View{
    func innerShadow<S: Shape, SS: ShapeStyle>(shape: S, color: SS, lineWidth: CGFloat = 1, offsetX: CGFloat = 0, offsetY: CGFloat = 0, blur: CGFloat = 4, blendMode: BlendMode = .normal, opacity: Double = 1) -> some View{
        return self
            .overlay(content: {
                shape
                    .stroke(color, lineWidth: lineWidth)
                    .blendMode(blendMode)
                    .offset(x: offsetX, y: offsetY)
                    .blur(radius: blur)
                    .mask(shape)
                    .opacity(opacity)
            })
    }
}
