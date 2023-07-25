//
//  LazyVG.swift
//  desineSwiftUI
//
//  Created by Борух Соколов on 24.07.2023.
//

import SwiftUI

struct LazyVG: View {
    var body: some View {
        
        
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))]) {
         //columns: [GridItem(.adaptive(minimum: 80), spacing: 16)],spacing: 16)
            ForEach(0 ..< 20) { item in
                Rectangle()
                    .fill(Color.blue)
                    .frame(height: 100)
            }
        }
        .padding()
       
        /*
        LazyVGrid(
            columns: [
                GridItem(.fixed(100), spacing: 8),
                GridItem(.fixed(160), spacing: 8),
                GridItem(.fixed(80), spacing: 8)
            ], spacing: 12) {

            ForEach(0 ..< 20) { item in
                Rectangle()
                    .frame(height: 80)
            }
        }
        */
        
    }
}

struct LazyVG_Previews: PreviewProvider {
    static var previews: some View {
        LazyVG()
    }
}
