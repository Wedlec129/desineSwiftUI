//
//  graf.swift
//  desineSwiftUI
//
//  Created by Борух Соколов on 25.07.2023.
//

import SwiftUI
import Charts

struct graf: View {
    
    var body: some View {
        VStack{
            Chart {
                BarMark(x: .value("Day", "Jun 1"), y: .value("Value", 50))
                BarMark(x: .value("Day", "Jun 2"), y: .value("Value", 20))
                    .foregroundStyle(.teal)
                    .cornerRadius(10)
            }
            
            
            
        }
        
    }
}

struct graf_Previews: PreviewProvider {
    static var previews: some View {
        graf()
    }
}
