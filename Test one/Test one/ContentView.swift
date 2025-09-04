//
//  ContentView.swift
//  Test one
//
//  Created by Atom HR on 05.09.2025.
//

import SwiftUI
var e = "csa"
var re = e.uppercased()


struct ContentView: View {
    @State private var tap = 0
    @State private var tap_copy = 0
    @State private var name = ""
    let students = ["Harry", "Hermione", "Ron", "Hermione"]
    @State private var selectedStudent = "--"
    @State private var namer = 0
    @State private var namer_1 = 0
    
    var body: some View {
        NavigationStack{
            Form{
                Section{
                    Text("go to home")
                    Button("TAPTAPTAPTAP: \(tap)"){
                        tap += 1
                    }
                }
                Section{
                    Button("TAPTAPTAPTAP: \(tap_copy)"){
                        tap_copy += 1
                    }
                    
                    Text("You tapi: \(tap_copy + tap)")
                }
                
                Section{
                    TextField("Enter text", text: $name)
                    Text("you: \(name)")
                    
                    TextField("Введи число: ", value: $namer, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                    TextField("Введи второе число: ", value: $namer_1, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                    
                    Text("Общая сумма ваших денегъ: \(namer + namer_1)")
                    
                }
                
                Section{
                    ForEach(1..<11) {
                        Text("this is \($0)")
                    }
                }
                
                
                Picker("Select your student", selection: $selectedStudent) {
                        ForEach(students, id: \.self) {
                                Text($0)
                        }
                    }
            }
            .navigationTitle(re)
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
}



#Preview {
    ContentView()
}

