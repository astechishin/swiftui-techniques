//
//  ForEachStuff.swift
//  swiftui-techniques
//
//  Created by Andy Stechishin on 2020-02-21.
//  Copyright © 2020 Andy Stechishin. All rights reserved.
//

import SwiftUI

extension ForEach where Data.Element: Hashable, ID == Data.Element, Content: View {
    init(values: Data, content: @escaping (Data.Element) -> Content) {
        self.init(values, id: \.self, content: content)
    }
}

struct ForEachStuff: View {
    let strings = ["one", "two", "three"]
    var body: some View {
        VStack {
            HStack {
                ForEach(values: strings) { aString in
                    Text(aString).font(.title)
                }
            }
        }
    }
}

struct ForEachStuff_Previews: PreviewProvider {
    static var previews: some View {
        ForEachStuff()
    }
}
