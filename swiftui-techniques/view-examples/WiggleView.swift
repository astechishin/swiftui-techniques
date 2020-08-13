//
//  WiggleView.swift
//  swiftui-techniques
//
//  Created by Andrew Stechishin on 2020-08-08.
//  Copyright © 2020 Andy Stechishin. All rights reserved.
//

import SwiftUI

struct WiggleView: View {
    @State var calendarWiggles = false
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Text("Wednesday")
                Text("5")
                    .font(.system(size: 33))
                Spacer()
                Text("No more events today")
                    .frame(width: 150, height: 45, alignment: .leading)
                    .multilineTextAlignment(.leading)
            }
            .padding()
            .background(Color.black)
            .cornerRadius(22)
            .foregroundColor(.white)
        }
        .frame(width: 170, height: 170, alignment: .leading)
        .overlay(Image(systemName: "minus.circle.fill")
                    .font(.title)
                    .foregroundColor(Color(.systemGray))
                    .offset(x: -80, y: -80))
        .rotationEffect(.degrees(calendarWiggles ? 0 : 2.5))
        .animation(Animation.easeInOut(duration: 0.15).repeatForever(autoreverses: true))
        .onAppear() {
            calendarWiggles.toggle()
        }
    }
}

struct WiggleView_Previews: PreviewProvider {
    static var previews: some View {
        WiggleView()
    }
}
