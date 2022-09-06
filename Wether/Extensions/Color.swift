//
//  Color.swift
//  Wether
//
//  Created by Егор  on 27.07.2022.
//
import Foundation
import SwiftUI

extension Color{
    
    static let theme = ColorTheme()
    
}

struct ColorTheme{
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let green = Color("GreenColor")
    let secondaryText = Color("SecondaryTextColor")
    let grey = Color("Grey")
    
}

