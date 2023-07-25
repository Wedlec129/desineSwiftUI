//
//  appStorege.swift
//  desineSwiftUI
//
//  Created by Борух Соколов on 25.07.2023.
//

import SwiftUI
/*
Установите переменную в UserDefaults

Чтобы создать новую переменную в UserDefaults и установить ее начальное значение, просто вызовите обертку AppStorage и установите начальное значение напрямую:
 */
struct appStorege: View {
    
    @AppStorage("themePreference") var themePreference: String = "dark"
    
    var body: some View {
        VStack{
            Text("Your theme preference is: \(themePreference).")
            Button("Change theme preference to light") {
                themePreference = "light"
            }
        }
    }
}

struct appStorege_Previews: PreviewProvider {
    static var previews: some View {
        appStorege()
    }
}
