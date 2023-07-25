//
//  ColorPicker14.swift
//  desineSwiftUI
//
//  Created by Борух Соколов on 25.07.2023.
//

import SwiftUI

struct ColorPicker14: View {
    @State var color = Color.blue
    @State var color2 = Color.purple
    
   
    
    var body: some View {
        
        
        VStack {
            ColorPicker("Color 1", selection: $color)
            ColorPicker("Color 2", selection: $color2)
            RoundedRectangle(cornerRadius: 30)
                .fill(LinearGradient(gradient: Gradient(colors: [color, color2]), startPoint: .topLeading, endPoint: .bottomTrailing))
            
            
            
            ExtractedView()
                
            
        }
        .padding()
    }
}



struct ColorPicker14_Previews: PreviewProvider {
    static var previews: some View {
        ColorPicker14()
    }
}

struct ExtractedView: View {
    @State var selectedDate = Date()
    var body: some View {
        DatePicker("Select date", selection: $selectedDate)
            .datePickerStyle(GraphicalDatePickerStyle())
    }
}
