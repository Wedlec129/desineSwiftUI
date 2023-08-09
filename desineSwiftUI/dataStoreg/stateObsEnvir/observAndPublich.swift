//
//  observAndPublich.swift
//  desineSwiftUI
//
//  Created by Борух Соколов on 09.08.2023.
//

import SwiftUI

//поскольку класс это ссылочный тип данных и в отличии от стуктур он не отправляет копии, а следит за изменениями


class User: ObservableObject{
    
    @Published var name: String = "Alex" //@Published как @State но для класса
    @Published var lastName: String = "Dogs"
    
}


struct observAndPublich: View {
    //типо @state но подписанного под класс ObservableObject
    //типо наблюдаемый обекст
    @ObservedObject var user = User()
    
    var body: some View {
        VStack{
            Text("you name is \(user.name) \(user.lastName)")
            
            TextField("first Name: ",text: $user.name)
            TextField("first Name: ",text: $user.lastName)
        }
    }
}

struct observAndPublich_Previews: PreviewProvider {
    static var previews: some View {
        observAndPublich()
    }
}
