//
//  hideKeyboard23.swift
//  desineSwiftUI
//
//  Created by Борух Соколов on 25.07.2023.
//SwiftUI не поставляется со встроенным методом отключения клавиатуры в вашем приложении, когда пользователь нажимает за пределы области клавиатуры. К счастью, его довольно легко реализовать и требует всего нескольких строк кода.



import SwiftUI

extension View {
    func hideKeyboard() {
        let resign = #selector(UIResponder.resignFirstResponder)
        UIApplication.shared.sendAction(resign, to: nil, from: nil, for: nil)
    }
}

struct hideKeyboard23: View {
    
    @State private var email = " "
    
    var body: some View {
        VStack {
                TextField("Email address", text: $email)
                SecureField("Password", text: $email)
                Button(action: {
                }) {
                        Text("Sign in")
                                .fontWeight(.semibold)
                }
            }
            .onTapGesture {
                    hideKeyboard()
            }
    }
}

struct hideKeyboard23_Previews: PreviewProvider {
    static var previews: some View {
        hideKeyboard23()
    }
}
