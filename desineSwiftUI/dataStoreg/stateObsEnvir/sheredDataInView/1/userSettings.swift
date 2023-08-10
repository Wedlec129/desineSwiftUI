//
//  userSettings.swift
//  desineSwiftUI
//
//  Created by Борух Соколов on 09.08.2023.
//

import SwiftUI

//мы типо будем использовать эту перемменную в других вью

class UserSettings: ObservableObject{
    @Published var score: Int = 0
}


