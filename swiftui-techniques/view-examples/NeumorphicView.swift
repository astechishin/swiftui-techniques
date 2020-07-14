//
//  NeumorphicView.swift
//  swiftui-techniques
//
//  Created by Andy Stechishin on 2020-06-29.
//  Copyright © 2020 Andy Stechishin. All rights reserved.
//

import SwiftUI

struct NeumorphicView: View {
    var body: some View {
        ZStack {
            Color.init(white: 0.97).edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    NeumorphSquare(title: "A").padding(.all, 10)
                    NeumorphSquare(title: "B", color: Color.red).padding(.all, 10)
                }
                HStack {
                    NeumorphSquare(title: "C", color: Color.green).padding(.all, 10)
                    NeumorphSquare(title: "D", color: Color.yellow).padding(.all, 10)
                }
            }
        }
    }
}
struct NeumorphicView_Previews: PreviewProvider {
    static var previews: some View {
        NeumorphicView()
    }
}

struct NeumorphSquare: View {
    var title: String
    var color: Color?
    @State private var isPressed = false
    var body: some View {
        Text(title)
            .foregroundColor(color ?? Color.blue)
            .fontWeight(.black)
            .font(.system(size: 40))
            .frame(width: 100, height: 100, alignment: .center)
            .background(Color.init(white: 0.96))
            .cornerRadius(16)
            .scaleEffect(CGSize(width: isPressed ? 0.9 : 1.0 , height: isPressed ? 0.9 : 1.0 ), anchor: .center)
            .shadow(color: Color.init(white: 1), radius: isPressed ? 0 : 5, x: isPressed ? -1 : -5, y: isPressed ? -1 : -5)
            .shadow(color: Color.init(white: 0.9), radius: isPressed ? 0 : 5, x: isPressed ? 1 : 5, y: isPressed ? 1 : 5)
            .gesture(DragGesture(minimumDistance: 0, coordinateSpace: .local).onChanged {_ in
                withAnimation(.easeInOut) {
                    isPressed = true
                }
            }.onEnded { _ in
                withAnimation(.easeInOut) {
                    isPressed = false
                }
            })
    }
}
