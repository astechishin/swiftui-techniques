//
//  CardView.swift
//  swiftui-techniques
//
//  Created by Andy Stechishin on 2020-05-12.
//  Copyright © 2020 Andy Stechishin. All rights reserved.
//

import SwiftUI

struct CardView: View {
    var text = "Card"
    var minY: CGFloat
    var maxY: CGFloat
    var image: String
    
    var body: some View {
        VStack {
            Image(image).resizable()
        }
        .frame(maxWidth: .infinity)
        .frame(height: 200)
        .background(Color.black)
        .cornerRadius(20)
        .shadow(color: Color.black, radius: 20, x: 0, y: 10)
        .scaleEffect(minY < 0 ? minY/1000+1 : 1, anchor: .bottom)
        .scaleEffect(maxY > 812 ? -(maxY - 812) / 200 + 1 : 1, anchor: .top)
        .opacity(Double(minY / 300 + 1))
        .opacity(Double(-(maxY - 812) / 300 + 1))
        .offset(y: minY < 0 ? -minY : 0)
    }
}

struct Card {
    var id = UUID()
    var image: String
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(minY: 3, maxY: 600, image: "temp")
    }
}
