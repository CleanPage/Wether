//
//  SegmentControl.swift
//  Wether
//
//  Created by Егор  on 04.08.2022.
//

import SwiftUI

struct SegmentControl: View {
    @Binding var selection: Int
    var body: some View {
        VStack(spacing: 5) {
            HStack{
                Button {
                    withAnimation(.easeInOut(duration: 0.5)) {
                        selection = 0
                    }
                } label: {
                    Text("Hourly Forecast")
                        .frame(minWidth: 0, maxWidth: .infinity)
                }
                Button {
                    withAnimation(.easeInOut(duration: 0.5)) {
                        selection = 1
                    }
                } label: {
                    Text("Weekly Forecast")
                        .frame(minWidth: 0, maxWidth: .infinity)
                }
            }.font(.subheadline.weight(.semibold))
                .foregroundColor(.secondary)
            Divider()
                .background(.white.opacity(0.5))
                .shadow(color: .black.opacity(0.3), radius: 0, x: 0, y: 1)
                .blendMode(.overlay)
                .overlay {
                    Divider()
                        .frame(width: UIScreen.main.bounds.width / 2, height: 3)
                        .background(Color.underline)
                        .frame(maxWidth: .infinity, alignment: selection == 0 ? .leading : .trailing)
                }
        }.padding(.top, 25)
    }
}

struct SegmentControl_Previews: PreviewProvider {
    static var previews: some View {
        SegmentControl(selection: .constant(0))
            .preferredColorScheme(.dark)
    }
}
