//
//  StaticData16.swift
//  desineSwiftUI
//
//  Created by Борух Соколов on 25.07.2023.
//
/*
Что такое статические данные?

Статические данные - это образец сбора данных, представленных структурированным образом, который вводится вручную перед внедрением полного динамического решения.

Модель данных

Модель данных позволяет нам быстро ссылаться на значения внутри объекта. Он также содержит типы значений, что дает нам возможность соответствующим образом манипулировать данными. Например, цвет имеет функции, сильно отличающиеся от строки.
*/

import SwiftUI

struct Course: Identifiable {
    var id = UUID()
    var title: String
    var color: Color
}



struct StaticData16: View {
    
    @State var courses = [
        Course(title: "SwiftUI", color: Color.blue),
        Course(title: "UI Design", color: Color.red)
    ]
    
    var body: some View {
        List {
            ForEach(courses) { item in
                Text(item.title)
                    .padding()
                    .background(item.color)
                    .cornerRadius(10)
            }
        }
    }
}

struct StaticData16_Previews: PreviewProvider {
    static var previews: some View {
        StaticData16()
    }
}
