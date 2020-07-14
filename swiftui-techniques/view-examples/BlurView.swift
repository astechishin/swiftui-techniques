//
//  BlurView.swift
//  swiftui-techniques
//
//  Created by Andy Stechishin on 2020-05-26.
//  Copyright © 2020 Andy Stechishin. All rights reserved.
//

import SwiftUI

struct BlurView: View {
    var body: some View {
        ZStack {
            Image("BG")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .blur(radius: 20) // <- this is the important modifier. The rest is just for demo

            // *******************
            // Note that you can Group multiple views and blur them together.
            // *******************
            
            Text("Hello \nSwiftUI Blur Effect")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(.white)
        }
    }
}

struct BlurView_Previews: PreviewProvider {
    static var previews: some View {
        BlurView()
    }
}
