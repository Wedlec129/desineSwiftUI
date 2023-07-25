//
//  modIfView.swift
//  desineSwiftUI
//
//  Created by Борух Соколов on 25.07.2023.
//

import SwiftUI

extension View {
    @ViewBuilder func `if`<Content: View>(_ condition: Bool, transform: (Self) -> Content) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }
}

struct modIfView: View {
    @State private var shouldAddShadow: Bool = true

    var body: some View {
        Text("Hello, world!")
            .if(shouldAddShadow) { view in
                view.shadow(color: .black, radius: 10, x: 0.0, y: 0.0)
            }
    }
}

struct modIfView_Previews: PreviewProvider {
    static var previews: some View {
        modIfView()
    }
}
