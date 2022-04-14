//
//  SwiftUIView.swift
//  
//
//  Created by Schwarz Dennis (PT-MT/PXN) on 14.04.22.
//

import SwiftUI

struct DotsView: View {
    var count: Int = 10
    var radius: CGFloat = 30
    var speed: Double = 0.1
    var scale: CGFloat = 1.0
    var initialRotation = 0.0

    var body: some View {
        ZStack {
            ForEach(0 ..< count, id: \.self) { idx in
                Circle()
                    .fill(Color.red)
                    .frame(width: 10)
                    .scaleEffect(self.scale)
                    .animation(.linear(duration: self.speed), value: self.scale)
                    .offset(y: -self.radius)
                    .rotationEffect(self.rotationEffectAngle(idx: idx))
            }
        }
    }

    func rotationEffectAngle(idx: Int) -> Angle {
        return Angle(degrees: ((360 / Double(self.count)) * Double(idx) + self.initialRotation))
    }
}

struct DotsView_Previews: PreviewProvider {
    static var previews: some View {
        DotsView()
    }
}
