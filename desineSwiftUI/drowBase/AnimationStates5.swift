//
//  AnimationStates5.swift
//  desineSwiftUI
//
//  Created by Борух Соколов on 24.07.2023.
//

import SwiftUI

struct AnimationStates5: View {
    
    @State var show = false
    var body: some View {
        VStack {
            Text("View more")
                .bold()
                .foregroundColor(.white)
        }
        .frame(width: show ? 320 : 300, height: show ? 600 : 44)
        .background(Color.blue)
        .cornerRadius(30)
        .shadow(color: Color.blue.opacity(0.5), radius: 20)
        .onTapGesture {
            withAnimation(.spring()) {
                show.toggle()
            }
        }
    }
}

struct AnimationStates5_Previews: PreviewProvider {
    static var previews: some View {
        AnimationStates5()
    }
}
