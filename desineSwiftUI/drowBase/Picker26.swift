//
//  Picker26.swift
//  desineSwiftUI
//
//  Created by Борух Соколов on 25.07.2023.
//

import SwiftUI

struct Picker26: View {
    @State private var number: Int = 1
    var body: some View {
        Picker("Your age", selection: $number) {
            ForEach(1...5, id: \.self) { number in
                Text("\(number)")
            }
        }.pickerStyle(SegmentedPickerStyle())
    }
}

struct Picker26_Previews: PreviewProvider {
    static var previews: some View {
        Picker26()
    }
}
