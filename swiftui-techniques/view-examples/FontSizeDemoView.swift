//
//  FontSizeDemoView.swift
//  swiftui-techniques
//
//  Created by Andy Stechishin on 2020-01-11.
//  Copyright © 2020 Andy Stechishin. All rights reserved.
//

import SwiftUI

struct FontSizeDemoView: View {
    var body: some View {
        VStack {
            Text("largeTitle").font(.largeTitle)
            Text("title").font(.title)
            Text("headline").font(.headline)
            Text("subheadline").font(.subheadline)
            Text("body").font(.body)
            Text("callout").font(.callout)
            Text("caption").font(.caption)
            Text("footnote").font(.footnote)
        }
    }
}

struct FontSizeDemoView_Previews: PreviewProvider {
    static var previews: some View {
        FontSizeDemoView()
    }
}
