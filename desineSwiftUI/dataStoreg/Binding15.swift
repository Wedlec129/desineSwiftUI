//
//  Binding15.swift
//  desineSwiftUI
//
//  Created by Борух Соколов on 25.07.2023.
//Как синхронизировать состояния в нескольких представлениях и установить константу для предварительного просмотра

import SwiftUI


//типо передача значения по ссылке

//Используйте @Binding для синхронизации состояний между двумя представлениями. Когда ссылается на NewView, передайте состояние как привязку с $.

struct Binding15: View {
    @State var show = false
    var body: some View {
        ZStack {
            Text("View Transition")
                .padding()
                .background(Capsule().stroke())
                .onTapGesture {
                    withAnimation(.spring()) {
                        show.toggle()
                    }
                }
            if show {
                NewView(show: $show)
                    .transition(.move(edge: .bottom))
                    .zIndex(1)
            }
        }
    }
}

struct NewView: View {
    @Binding var show: Bool
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .fill(Color.blue)
            .padding()
            .onTapGesture {
                withAnimation(.spring()) {
                    show.toggle()
                }
            }
    }
}



struct Binding15_Previews: PreviewProvider {
    static var previews: some View {
        Binding15()
    }
}
