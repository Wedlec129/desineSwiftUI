//
//  sideBar2.swift
//  desineSwiftUI
//
//  Created by Борух Соколов on 24.07.2023.
//

import SwiftUI

struct sideBar2: View {
    var body: some View {
        NavigationView {
            List {
                Label("Courses", systemImage: "book")
                Label("Tutorials", systemImage: "square")
                
                NavigationLink(destination: HomeView()) {
                        Label("Courses", systemImage: "book")
                }
                
            }
            .navigationTitle("Learn")
        }
    }
}


struct HomeView: View {
    var body: some View {
        Text("Courses")
            .navigationTitle("Courses")
    }
}

struct sideBar2_Previews: PreviewProvider {
    static var previews: some View {
        sideBar2()
    }
}
