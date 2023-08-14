//
//  testing2.swift
//  desineSwiftUI
//
//  Created by Борух Соколов on 26.07.2023.

import SwiftUI

struct testing2: View {
    @State var vibrateOnRing=true
    
    
    @State private var speed = 50.0
    @State private var isEditing = false
    
    @State private var sleepAmount = 8.0
    
    
    
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = 0
    
    
    
    
    var body: some View {
        VStack {
            Form {
                Group {
                    Text("Hello World")
                    Text("Hello World")
                    Text("Hello World")
                }
                
                Section {
                    Text("Hello World")
                    Toggle("Vibrate on Ring", isOn: $vibrateOnRing)
                    
                    Slider(
                        value: $speed,
                        in: 0...100,
                        onEditingChanged: { editing in
                            isEditing = editing
                        }
                    )
                    Text("\(speed)")
                        .foregroundColor(isEditing ? .red : .blue)
                    
                    Stepper(value: $sleepAmount) {
                        Text("\(sleepAmount) hours")
                    }
                    Picker("Select your student", selection: $selectedStudent) {
                        ForEach(0 ..< students.count) {
                            Text(self.students[$0])
                        }
                    }
                    Text("You chose: Student # \(students[selectedStudent])")
                    
                }
                Label("Lightning", systemImage: "bolt.fill")
            }
            
            
        }
        
        
    }
    
}


struct testing2_Previews: PreviewProvider {
    static var previews: some View {
        testing2()
    }
}
