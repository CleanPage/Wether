//
//  TabBar.swift
//  Wether
//
//  Created by Егор  on 27.07.2022.
//

import SwiftUI

struct TabBar: View {
    @State var action: () -> Void
    var body: some View {
        ZStack {
            //MARK: ARC SHAPE
            Arc()
                .fill(Color.tabBarBackground)
                .frame(height: 88)
                .overlay {
                    Arc()
                        .stroke(Color.tabBarBorder, lineWidth: 0.5)
                }
            //MARK: TAB ITEMS
            HStack{
                //MARK: EXTAND BUTTON
                Button {
                    action()
                } label: {
                    Image(systemName: "mappin.and.ellipse")
                        .frame(width: 44, height: 44)
                }
                Spacer()
                //MARK: NAVIGATION BUTTON
                Button {
                } label: {
                    Image(systemName: "list.bullet")
                        .frame(width: 44, height: 44)
                }
            }
            .font(.title2)
            .foregroundColor(.white)
            .padding()
        }
        .frame(maxHeight: .infinity, alignment: .bottom)
        .ignoresSafeArea()
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar(action: {})
            .preferredColorScheme(.dark)
    }
}
