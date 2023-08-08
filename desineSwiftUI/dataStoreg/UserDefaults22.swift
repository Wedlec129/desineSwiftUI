//
//  UserDefaults22.swift
//  desineSwiftUI
//
//  Created by Борух Соколов on 25.07.2023.
//
/*
UserDefaults - это класс, который делает именно это. Он постоянно кэширует предпочтения пользователя (например, валюту, которую пользователь предпочитает для приложения магазина), а также любые другие данные, которые вы хотите (идентификатор пользователя, его адрес электронной почты и т. д.). Он работает как пары ключ-значение и очень прост в реализации.
*/

import SwiftUI

struct UserDefaults22: View {
    let savedEmail = UserDefaults.standard.string(forKey: "email")

        var body: some View {
            Text(savedEmail ?? "")
                .padding()
                .onAppear() {
                    let userEmail = "stephanie@email.com"
                    UserDefaults.standard.set(userEmail, forKey: "email")
                    // An integer
                    let userAge = 40
                    UserDefaults.standard.set(userAge, forKey: "age")

                    // A boolean
                    let userIsLoggedIn = true
                    UserDefaults.standard.set(userIsLoggedIn, forKey: "isLoggedIn")

                    // A date
                    let userLastLoginTime = Date()
                    UserDefaults.standard.set(userLastLoginTime, forKey: "lastLoginTime")
                }
        }
}

struct UserDefaults22_Previews: PreviewProvider {
    static var previews: some View {
        UserDefaults22()
    }
}
