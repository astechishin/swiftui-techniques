//
//  NavigationViewExporation.swift
//  swiftui-techniques
//
//  Created by Andy Stechishin on 2020-02-22.
//  Copyright © 2020 Andy Stechishin. All rights reserved.
//

import SwiftUI

struct NavigationViewExploration: View {
    let list = ["First", "Second", "Third", "Fourth"]
    
    @State var oneString = "1 string"
    @State var twoString = "2 string"
    
    var body: some View {
        NavigationView {
            List {
                Text("this is test").font(.title)

                Form {
                    TextField("1", text: $oneString)
                }
                ForEach(values: list) { listItem in
                    NavigationLink(destination: NextNavigationView(title: listItem)) {
                        Text(listItem).font(.headline)
                    }
                }
            }.navigationBarTitle(Text("Nav Testing"))
        }
    }
}

struct NextNavigationView: View {
    var title: String

    let list = ["part 1", "part 2", "part 3", "part 4", "part 5"]

    var body: some View {
        VStack(alignment: .leading) {
            NavigationLink(destination: TertiaryNavigationView(item: "outside")) {
                Text("some other text").padding(.leading, 20)
            }.buttonStyle(PlainButtonStyle())
            
            List {
                Text("This is a very long description for \(title)")

                ForEach(values: list) { listItem in
                    NavigationLink(destination: TertiaryNavigationView(item: listItem)) {
                        Text(listItem).font(.headline)
                    }
                }
            }
        }
        .navigationBarTitle(Text(title), displayMode: .inline)
    }
}

struct TertiaryNavigationView: View {
    var item: String
    
    var body: some View {
        VStack {
            Text("placeholder")
        }.navigationBarTitle(Text(item), displayMode: .inline)
    }
}

struct NavigationViewExporation_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewExploration()
    }
}
