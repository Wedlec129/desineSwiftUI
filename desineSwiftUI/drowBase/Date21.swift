//
//  Date21.swift
//  desineSwiftUI
//
//  Created by Борух Соколов on 25.07.2023.
//

import SwiftUI


//расширяем ф-я data
extension Date {
        func formatDate() -> String {
                let dateFormatter = DateFormatter()
            dateFormatter.setLocalizedDateFormatFromTemplate("EEEE, MMM d")
            return dateFormatter.string(from: self)
        }
    func formatStringDate(date: String) -> String {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
            let newDate = dateFormatter.date(from: date)
            dateFormatter.setLocalizedDateFormatFromTemplate("MMMM d, yyyy")
            return dateFormatter.string(from: newDate!)
    }
    // Output: February 1, 2021
}

struct Date21: View {
    let today = Date().formatDate()
    var body: some View {
        Text(today)
    }
}

struct Date21_Previews: PreviewProvider {
    static var previews: some View {
        Date21()
    }
}
