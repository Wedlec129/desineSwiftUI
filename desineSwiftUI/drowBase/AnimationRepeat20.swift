//
//  AnimationRepeat20.swift
//  desineSwiftUI
//
//  Created by Борух Соколов on 25.07.2023.
//

import SwiftUI

struct AnimationRepeat20: View {
    @State var appear = false

    var body: some View {
        Circle()
            //подрезаем
            .trim(from: 0.3, to: 1)
        //
            .stroke(Color.blue, style: StrokeStyle(lineWidth: 5, lineCap: .round, lineJoin: .round))
            .frame(width: 44, height: 44)
            
            .rotationEffect(Angle(degrees: appear ? 360 : 0))
        
            .animation(Animation.linear(duration: 2).repeatForever(autoreverses: false))
            .onAppear {
                appear = true
            }
    }
}

struct AnimationRepeat20_Previews: PreviewProvider {
    static var previews: some View {
        AnimationRepeat20()
    }
}
