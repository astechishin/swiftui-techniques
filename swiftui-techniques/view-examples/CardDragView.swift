//
//  CardDragView.swift
//  swiftui-techniques
//
//  Created by Andy Stechishin on 2020-05-12.
//  Copyright © 2020 Andy Stechishin. All rights reserved.
//

import SwiftUI

struct CardDragView: View {
    @State var dragAmount = CGSize.zero

     var body: some View {
         VStack {
             GeometryReader { geo in
                 Rectangle()
                     .fill(LinearGradient(gradient: Gradient(colors: [.yellow, .red]), startPoint: .topLeading, endPoint: .bottomTrailing))
                     .frame(width: 300, height: 200)
                     .clipShape(RoundedRectangle(cornerRadius: 20))
                     .rotation3DEffect(.degrees(-Double(self.dragAmount.width) / 20), axis: (x: 0, y: 1, z: 0))
                     .rotation3DEffect(.degrees(Double(self.dragAmount.height / 20)), axis: (x: 1, y: 0, z: 0))
                     .offset(self.dragAmount)
                     .gesture(
                         DragGesture()
                             .onChanged { self.dragAmount = $0.translation }
                             .onEnded { _ in
                                 withAnimation(.spring()) {
                                     self.dragAmount = .zero
                                 }
                             }
                     )
             }
         }
     }
}

struct CardDragView_Previews: PreviewProvider {
    static var previews: some View {
        CardDragView()
    }
}
