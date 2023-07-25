//
//  LongPress8.swift
//  desineSwiftUI
//
//  Created by Борух Соколов on 24.07.2023.
//

import SwiftUI

struct LongPress8: View {
    //Using the LongPressGesture updating event, we're changing the values of the GestureState.
    @GestureState var press = false
    @State var show = false
    
    var body: some View {
        VStack{
            Image(systemName: "camera.fill")
                .foregroundColor(.white)
                .frame(width: 60, height: 60)
                .background(show ? Color.black : Color.blue)
                .mask(Circle())
                .scaleEffect(press ? 2 : 1)
                .animation(.spring(response: 0.4, dampingFraction: 0.6))
            
            // жесты
                .gesture(
                    //долгое нажатие
                    LongPressGesture(minimumDuration: 0.5)
                        .updating($press) { currentState, gestureState, transaction in
                            gestureState = currentState
                        }
                    //в конце
                        .onEnded { value in
                            show.toggle()
                        }
                )
            .padding(50)
            AsyncImage(url: URL(string: "https://images.ctfassets.net/ooa29xqb8tix/J6KiaOqQyBtSa84hx6fuI/2cd1d475743a2a42c8643b2a69e88547/Advanced_React_Hooks_800x600_cover.png?w=400&q=50")!) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 220, alignment: .center)
            } placeholder: {
                ProgressView()
            }
        }
    }
}


struct LongPress8_Previews: PreviewProvider {
    static var previews: some View {
        LongPress8()
    }
}
