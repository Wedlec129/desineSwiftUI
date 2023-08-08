//
//  gird31.swift
//  desineSwiftUI
//
//  Created by Борух Соколов on 25.07.2023.
// taible

import SwiftUI

struct gird31: View {
    var body: some View {
        
        Grid(alignment: .leading, horizontalSpacing: 12, verticalSpacing: 12) {
            GridRow {
                Text("4")
                ProgressView(value: 0.1)
                RatingView(rating: 1)
            }
            GridRow {
                Text("21")
                ProgressView(value: 0.2)
                RatingView(rating: 2)
            }
            GridRow {
                Text("5")
                ProgressView(value: 0.1)
                RatingView(rating: 3)
            }
            GridRow {
                Text("52")
                ProgressView(value: 0.5)
                RatingView(rating: 4)
            }
            GridRow {
                Text("67")
                ProgressView(value: 0.6)
                RatingView(rating: 5)
            }
        }
        .padding()
        
        
        
    }
}

struct RatingView: View {
    var rating = 3
    let list = [1, 2, 3, 4, 5]

    var body: some View {
        HStack(spacing: 0) {
            ForEach(list, id: \.self) { item in
                Image(systemName: rating >= item ? "star.fill" : "star")
            }
        }
    }
}


struct gird31_Previews: PreviewProvider {
    static var previews: some View {
        gird31()
    }
}
