//
//  ShadowBlockUIStyle.swift
//  swiftui-techniques
//
//  Created by Andy Stechishin on 2020-07-01.
//  Copyright © 2020 Andy Stechishin. All rights reserved.
//

import SwiftUI
struct UIConstants {
    static let blockEdge = EdgeInsets(top: 2, leading: 2, bottom: 2, trailing: 2)
    static let normalRadius: CGFloat = 8.0
}

struct ShadowBlockUIStyle: ViewModifier {
    var padding: EdgeInsets = UIConstants.blockEdge
    
    init(padding: EdgeInsets = UIConstants.blockEdge) {
        self.padding = padding
    }
    
    func body(content: Content) -> some View {
        content
            .background(
                RoundedRectangle(cornerRadius: UIConstants.normalRadius)
                    .fill(Color.white)
                    .shadow(color: Color.gray, radius: 3, x: 0, y: 1)
            )
            .padding(padding)
    }
}
