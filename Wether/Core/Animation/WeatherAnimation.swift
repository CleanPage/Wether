//
//  SunAnimation.swift
//  Wether
//
//  Created by Егор  on 17.08.2022.
//

import SwiftUI
import Lottie
struct WeatherAnimation: UIViewRepresentable {
    var name: String
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        
        let animationView = AnimationView()
        let animation = Animation.named(name)
        animationView.loopMode = .loop
        
        animationView.animation = animation
        animationView.play()
        animationView.contentMode = .scaleAspectFit
        
        animationView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(animationView)
        
        NSLayoutConstraint.activate([
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor)
            
        ])
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
    
    typealias UIViewType = UIView
    
    
}

struct SunAnimation_Previews: PreviewProvider {
    static var previews: some View {
        WeatherAnimation(name: "sun")
            .background(Color.theme.background)

    }
}

