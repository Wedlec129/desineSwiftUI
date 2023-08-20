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
                //Circle()
                //Ellipse()
                //Capsule(style: .circular)
                //Rectangle()
                RoundedRectangle(cornerRadius: 10)
                    //.fill(Color.green)
                    //.foregroundColor(.pink)
                    //.stroke()
                    //.stroke(Color.red)
                    //.stroke(Color.blue, lineWidth: 30)
                    //.stroke(Color.orange, style: StrokeStyle(lineWidth: 30, lineCap: .round, dash: [30]))
                    //.trim(from: 0.4, to: 1.0)
        //            .stroke(Color.purple, lineWidth: 50)
                    .strokeBorder(Color.red)
                    .frame(width: 300, height: 200)
                VStack(alignment: .leading) {
                    Text("Hello, World!")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .padding(.bottom, 20)
                    
                    Text("This is the description of what we will do on this screen. It is multiple lines and we will align the text to the leading edge.")
                }
                .padding()
                .padding(.vertical, 10)
                .background(
                    Color.white
                        .cornerRadius(10)
                        .shadow(
                            color: Color.black.opacity(0.3),
                            radius: 10,
                            x: 0.0, y: 10)
                )
                .padding(.horizontal, 10)
            }
            
           
            
        }
        
        
    }
    
}


struct testing2_Previews: PreviewProvider {
    static var previews: some View {
        testing2()
    }
}
