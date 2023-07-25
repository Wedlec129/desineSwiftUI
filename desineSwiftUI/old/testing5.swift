//
//  testing5.swift
//  desineSwiftUI
//
//  Created by Борух Соколов on 26.07.2023.
//

import SwiftUI

struct testing5: View {
    var body: some View {
        VStack{
            ScrollView(.horizontal) {
                HStack(spacing: 10) {
                    ForEach(0..<10) {
                        Text("Item \($0)")
                            .font(.title)
                    }
                }
            }
            HStack{
                ScrollView(.vertical) {
                    VStack(spacing: 10) {
                        ForEach(0..<100) {
                            Text("Item \($0)")
                                .font(.title)
                        }
                    }
                }
                
                
                
                ScrollView(.vertical) {
                    VStack(spacing: 10) {
                        ForEach(0..<100) {
                            Text("Item \($0)")
                                .font(.title)
                        }
                    }
                    .frame(maxWidth: .infinity)
                }
            }
        }
    }
}

struct testing5_Previews: PreviewProvider {
    static var previews: some View {
        testing5()
    }
}
