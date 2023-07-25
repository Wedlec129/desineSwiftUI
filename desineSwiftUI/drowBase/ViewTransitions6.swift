//
//  ViewTransitions6.swift
//  desineSwiftUI
//
//  Created by Борух Соколов on 24.07.2023.
//

import SwiftUI

struct ViewTransitions6: View {
    @State var show = false

    var body: some View {
        ZStack {
            if !show {
                Text("View Transition")
                    .padding()
                    .background(Capsule().stroke())
                    .onTapGesture {
                        withAnimation(.spring()) {
                            show.toggle()
                        }
                    }
            } else {
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color.blue)
                    .padding()
                    .transition(.move(edge: .trailing))
                    .zIndex(1)
                    .overlay(
                        HStack{
                            Spacer()
                            VStack{
                                Image(systemName: "xmark")
                                    .onTapGesture {
                                        withAnimation(.spring()) {
                                            show.toggle()
                                        }
                                    }
                                    .padding()
                                Spacer()
                            }
                        }
                            .padding()
                )
            }
            
        }.padding()
       
    }
}

struct ViewTransitions6_Previews: PreviewProvider {
    static var previews: some View {
        ViewTransitions6()
    }
}
