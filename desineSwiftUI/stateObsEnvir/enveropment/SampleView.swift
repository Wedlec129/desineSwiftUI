//
//  SampleView.swift
//  desineSwiftUI
//
//  Created by Борух Соколов on 13.08.2023.
//

import SwiftUI

struct SampleView: View {
    //значение будем передоваьь
    @EnvironmentObject var data:DataExemple
    
    var body: some View {
        HStack(){
            Text("\(data.text)")
            Text("\(data.Counter)")
        }
    }
}

struct SampleView_Previews: PreviewProvider {
    static var previews: some View {
        SampleView()
            .environmentObject(DataExemple(text: "test", Counter: 12))
        //передаём значение для отображения
    }
}
