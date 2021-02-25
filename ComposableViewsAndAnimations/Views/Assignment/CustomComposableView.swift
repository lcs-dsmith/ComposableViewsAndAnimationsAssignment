//
//  CustomComposableView.swift
//  ComposableViewsAndAnimations
//
//  Created by Russell Gordon on 2021-02-24.
//

import SwiftUI

struct CustomComposableView: View {
    
    @State private var offset: CGFloat = 0
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
     
        Text("VROOOOM")
            .offset(x: 0, y: offset)
            .onReceive(timer) { _ in
                withAnimation(.linear(duration: 0.1)) {
                    offset = -1000
                }
            }
//            .animation(.interpolatingSpring(stiffness: 50, damping: 0.5))
            
    }
}

struct CustomComposableView_Previews: PreviewProvider {
    static var previews: some View {
        CustomComposableView()
    }
}
