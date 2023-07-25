//
//  AnimationModifier7.swift
//  desineSwiftUI
//
//  Created by Борух Соколов on 24.07.2023.
//

import SwiftUI

struct AnimationModifier7: View {
    @State var show = false

    @State var tap = false
    
        var body: some View {
            VStack{
                ZStack {
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: 260, height: 200)
                        .offset(y: 20)
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: 300, height: 200)
                        .foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                        .offset(y: show ? -200 : 0)
                        .scaleEffect(show ? 1.2 : 1)
                        .rotationEffect(Angle(degrees: show ? 30 : 0))
                        .rotation3DEffect(
                            Angle(degrees: show ? 30 : 0),
                            axis: (x: 1, y: 0, z: 0),
                            anchor: .center,
                            anchorZ: 0.0,
                            perspective: 1
                        )
                        .onTapGesture {
                            withAnimation(.spring()) {
                                show.toggle()
                            }
                        }
                }
                .padding(.vertical,90)
                VStack {
                           Text("View more").foregroundColor(.white)
                       }
                       .frame(width: 200, height: 200)
                       .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing))
                       .mask(RoundedRectangle(cornerRadius: 30))
                       .shadow(color: Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)).opacity(tap ? 0.6 : 0.3), radius: tap ? 20 : 10, x: 0, y: tap ? 10 : 20)
                       .scaleEffect(tap ? 1.2 : 1)
                       .animation(.spring(response: 0.4, dampingFraction: 0.6))
                       .onTapGesture {
                           tap = true
                           DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                               tap = false
                           }
                       }
                
            }
    }
}

struct AnimationModifier7_Previews: PreviewProvider {
    static var previews: some View {
        AnimationModifier7()
    }
}
