//
//  CustomComposableView.swift
//  ComposableViewsAndAnimations
//
//  Created by Russell Gordon on 2021-02-24.
//

import SwiftUI

struct CustomComposableView: View {
    
    @State private var offsety1: CGFloat = 300
    
    @State private var offsety2: CGFloat = -500
    
    @State private var offsetx1: CGFloat = 200
    
    @State private var offsetx2: CGFloat = 40
    
    @State private var opacity1: Double = 1
    
    @State private var opacity2: Double = 0
    
    @State private var opacity3: Double = 0
    
    @State private var opacity4: Double = 0
    
    @State private var scaleFactor: CGFloat = 10
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        
        Text("VROOOOM1")
            .position(x: 200, y: offsety1)
            .onReceive(timer) { _ in
                withAnimation(.linear(duration: 0.1)) {
                    offsety1 = -1000
                }
                
            }
        Text("VROOOM2")
            .position(x: 200, y: offsety2)
            .opacity(opacity1)
            .onReceive(timer) { _ in
                withAnimation(Animation.interpolatingSpring(mass: 0.75, stiffness: 5, damping: 1, initialVelocity: 8).delay(2.5)) {
                    offsety2 = 150
                }
                withAnimation(Animation.spring().delay(13)) {
                    opacity1 = 0
                }
                
            }
        Text("VROOOM3")
            .position(x: offsetx1, y: -33)
            .opacity(opacity2)
            .onReceive(timer) { _ in
                withAnimation(Animation.linear(duration: 0.01).delay(13)) {
                    opacity2 = 1
                }
                withAnimation(Animation.linear(duration: 1.5).delay(13.4)) {
                    offsetx1 = 40
                }
            }
        Circle()
            .scaleEffect(scaleFactor)
            .position(x: 0, y: 0)
            .foregroundColor(.white)
            .opacity(opacity3)
            .onReceive(timer) { _ in
                withAnimation(Animation.linear(duration: 0.01).delay(15.5)) {
                    opacity3 = 1
                }
            }
        
        Text("VROOOM4")
            .position(x: offsetx2, y: -33)
            .opacity(opacity2)
            .onReceive(timer) { _ in
                withAnimation(Animation.linear(duration: 0.01).delay(15.5)) {
                    opacity4 = 1
                }
                withAnimation(Animation.linear(duration: 0.1).delay(15.6)) {
                    offsetx2 = -200
                }
                
            }
    }
}

struct CustomComposableView_Previews: PreviewProvider {
    static var previews: some View {
        CustomComposableView()
    }
}
