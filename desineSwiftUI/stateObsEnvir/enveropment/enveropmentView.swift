//
//  enveropmentView.swift
//  desineSwiftUI
//
//  Created by Борух Соколов on 13.08.2023.
//

import SwiftUI


class DataExemple: ObservableObject{
    var text: String = "Counter"
    var Counter: Int = 0
    
    init(text: String, Counter: Int) {
        self.text = text
        self.Counter = Counter
    }
    
}


struct enveropmentView: View {
    
    @StateObject var data = DataExemple(text: "hello", Counter: 737)
   
    var body: some View {
         
        VStack{
            
            SampleView()
                .environmentObject(data)
            // типо передаём значение
            
        }
       
    }
}

struct enveropmentView_Previews: PreviewProvider {
    static var previews: some View {
        enveropmentView()
    }
}
