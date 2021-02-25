//
//  CustomComposableView.swift
//  ComposableViewsAndAnimations
//
//  Created by Russell Gordon on 2021-02-24.
//

import SwiftUI

struct CustomComposableView: View {
    
    @State private var offset: CGFloat = 40
    
    var body: some View {
     
        Text("VROOOOM")
            .offset(x: offset, y: offset)
            .onTapGesture {
                offset = 100
            }
            .animation(.interpolatingSpring(stiffness: 50, damping: 0.5))
            
    }
}

struct CustomComposableView_Previews: PreviewProvider {
    static var previews: some View {
        CustomComposableView()
    }
}
