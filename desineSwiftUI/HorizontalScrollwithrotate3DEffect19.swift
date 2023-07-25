//
//  HorizontalScrollwithrotate3DEffect19.swift
//  desineSwiftUI
//
//  Created by Борух Соколов on 25.07.2023.
//

import SwiftUI

struct HorizontalScrollwithrotate3DEffect19: View {
    var body: some View {
        VStack{
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(0 ..< 5) { item in
                        RoundedRectangle(cornerRadius: 30)
                            .frame(width: 300, height: 300)
                    }
                }
                .padding()
            }
            /* обернув в это можем изменять геометрию
            GeometryReader { geometry in
                // RoundedRectangle
                         .rotation3DEffect(
                             Angle(
                                 degrees: Double((geometry.frame(in: .global).minX - 20) / -20)
                             ),
                             axis: (x: 0, y: 1, z: 0),
                             anchor: .center,
                             anchorZ: 0.0,
                             perspective: 1.0
                         )
                }
            .frame(width: 300, height: 300)
            */
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(0 ..< 5) { item in
                        
                        
                        GeometryReader { geometry in
                            RoundedRectangle(cornerRadius: 30)
                                .fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)), Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                .rotation3DEffect(
                                    Angle(
                                        degrees: Double((geometry.frame(in: .global).minX - 20) / -20)
                                    ),
                                    axis: (x: 0, y: 1, z: 0),
                                    anchor: .center,
                                    anchorZ: 0.0,
                                    perspective: 1.0
                                )
                        }
                        .frame(width: 300, height: 300)
                    }
                }
                .padding()
            }
        }
    }
}

struct HorizontalScrollwithrotate3DEffect19_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalScrollwithrotate3DEffect19()
    }
}
