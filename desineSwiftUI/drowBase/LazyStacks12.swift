//
//  LazyStacks12.swift
//  desineSwiftUI
//
//  Created by Борух Соколов on 25.07.2023.
//

import SwiftUI

struct LazyStacks12: View {
    var body: some View {
        VStack{
            ScrollView {
                LazyVStack(spacing: 16) {
                    ForEach(0 ..< 10) { item in
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.white)
                            .frame(height: 100)
                            .shadow(radius: 10)
                    }
                }
                .padding()
            }
            
            Color.red
                .frame(height: 25)
                .cornerRadius(5)
                .padding()
            
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
                    ForEach(0 ..< 10000) { item in
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.white)
                            .frame(height: 100)
                            .shadow(radius: 100)
                    }
                }
                .padding()
            }
            
        }
    }
}

struct LazyStacks12_Previews: PreviewProvider {
    static var previews: some View {
        LazyStacks12()
    }
}
