//
//  ContentView.swift
//  swiftui-techniques
//
//  Created by Andy Stechishin on 2020-01-11.
//  Copyright © 2020 Andy Stechishin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("A view!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        // Preview with different size classes
        Group {
            ContentView()
                .environment(\.sizeCategory, .extraSmall)
            
            ContentView()
            
            ContentView()
                .environment(\.sizeCategory, .accessibilityExtraExtraExtraLarge)
            
            ContentView()
                .environment(\.colorScheme, .dark)
        }
    }
}
