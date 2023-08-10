//
//  observ.swift
//  desineSwiftUI
//
//  Created by Борух Соколов on 09.08.2023.
//

import SwiftUI

struct observ: View {
    @ObservedObject var setting: UserSettings = UserSettings()
    var body: some View {
        VStack{
            Text("score: \(setting.score)")
            
            HStack{
                Button(action: {
                    setting.score=setting.score-1
                }, label: {
                    Image(systemName: "minus")
                        .foregroundColor(.red)
                        .padding()
                })
               
                Button(action: {
                    setting.score=setting.score+1
                }, label: {
                    Image(systemName: "plus")
                        .foregroundColor(.green)
                        .padding()
                })
            }
            
        }
    }
}

struct observ_Previews: PreviewProvider {
    static var previews: some View {
        observ()
    }
}
