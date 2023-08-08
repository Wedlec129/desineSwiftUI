//
//  state01.swift
//  desineSwiftUI
//
//  Created by Борух Соколов on 08.08.2023.
//

import SwiftUI

struct state01: View {
    @State var name = ""
    var body: some View {
        VStack{ 
            Text("Hello \(name)")
            TextField("name: ", text: $name)
        }
        .padding()
    }
}

struct state01_Previews: PreviewProvider {
    static var previews: some View {
        state01()
    }
}
