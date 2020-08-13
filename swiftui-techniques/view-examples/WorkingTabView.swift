//
//  WorkingTabView.swift
//  swiftui-techniques
//
//  Created by Andrew Stechishin on 2020-08-12.
//  Copyright © 2020 Andy Stechishin. All rights reserved.
//

import SwiftUI

//Doesn't compile, lots of issues
//
struct WorkingTabView<SelectionValue>: View where SelectionValue: Hashable {
    var selection: Binding<SelectionValue>
    var viewControllers: [UIHostingController<AnyView>]
    var indexBinding: Binding<Int>
    
    init<A: View, B: View>(selection: Binding<SelectionValue>, @ViewBuilder content: () -> TupleView<(A, B)>) {
        self.selection = selection
        let views = content().value
        
        let firstItem = UIHostingController(rootView: AnyView(views.0))
        firstItem.tabBarItem.title = "Home"
        firstItem.tabBarItem.image = UIImage(systemName: "house.fill")
        
        let secondItem = UIHostingController(rootView: AnyView(views.1))
        secondItem.tabBarItem.title = "Timeline"
        secondItem.tabBarItem.image = UIImage(systemName: "calendar")
        
        self.indexBinding = Binding<Int>.init(get: {
            //let viewArray:Array<A> = [views.0, views.1]
            let idx: Int? = nil //viewArray.firstIndex(where: {$0.tag == selection.value})
            
            return idx ?? -1
        },
        set: { (newValue: Int) -> Void in
            //selection.value = [views.0, views.1][newValue]
        })
        
        self.viewControllers = [firstItem, secondItem]
    }
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct WorkingTabView_Previews: PreviewProvider {
    static var previews: some View {
        WorkingTabView(selection: .constant(1)) {
            Text("Hi")
            Text("World")
        }
    }
}
