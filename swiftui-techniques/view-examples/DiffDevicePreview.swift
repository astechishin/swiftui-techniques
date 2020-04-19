//
//  DiffDevicePreview.swift
//  swiftui-techniques
//
//  Created by Andy Stechishin on 2020-04-19.
//  Copyright © 2020 Andy Stechishin. All rights reserved.
//

import SwiftUI

struct DiffDevicePreview: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct DiffDevicePreview_Previews: PreviewProvider {
    static var previews: some View {
        Group {
           DiffDevicePreview()
              .previewDevice(PreviewDevice(rawValue: "iPhone SE"))
              .previewDisplayName("iPhone SE")

           DiffDevicePreview()
              .previewDevice(PreviewDevice(rawValue: "iPhone 11 Pro Max"))
              .previewDisplayName("iPhone 11 Pro Max")

            DiffDevicePreview()
               .previewDevice(PreviewDevice(rawValue: "iPad Pro (12.9-inch) (4th generation)"))
               .previewDisplayName("iPad Pro 12.9")
        }
    }
}
