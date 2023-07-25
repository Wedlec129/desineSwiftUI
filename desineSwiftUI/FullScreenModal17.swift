//
//  FullScreenModal17.swift
//  desineSwiftUI
//
//  Created by Борух Соколов on 25.07.2023.
//

import SwiftUI


struct FullScreenModal17: View {
    @State var showModal = false
    
    var body: some View {
        
        Button(action: { showModal = true }) {
            Text("My Button")
        }
        .fullScreenCover(isPresented: $showModal) {
            ModalView()
        }
    }
}

struct ModalView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Text("Close Modal")
            .onTapGesture {
                presentationMode.wrappedValue.dismiss()
            }
    }
}

struct FullScreenModal17_Previews: PreviewProvider {
    static var previews: some View {
        FullScreenModal17()
    }
}
