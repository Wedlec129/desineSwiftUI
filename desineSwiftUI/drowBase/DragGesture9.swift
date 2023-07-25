//
//  DragGesture9.swift
//  desineSwiftUI
//
//  Created by Борух Соколов on 24.07.2023.
//

import SwiftUI

struct DragGesture9: View {
    
    @State var viewState = CGSize.zero
    
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .fill(Color.blue)
            .frame(width: 300, height: 400)
            .offset(x: viewState.width, y: viewState.height)
            .gesture(
                DragGesture().onChanged { value in
                    viewState = value.translation
                }
                    .onEnded { value in
                        withAnimation(.spring()) {
                            viewState = .zero
                            //viewState = value.translation
                        }
                    }
            )
    }
    
}

struct DragGesture9_Previews: PreviewProvider {
    static var previews: some View {
        DragGesture9()
    }
}
