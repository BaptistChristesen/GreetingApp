//
//  ContentView.swift
//  GreetingApp
//
//  Created by caden christesen on 9/12/22.
//

import SwiftUI


struct ContentView: View {
    @State private var name = ""
    @State private var greeting = ""
    var body: some View {
        Group{
        Text("Greeting App")
            .padding()
            .font(.title)
            .multilineTextAlignment(.center)
        
        TextField("Your Name", text: $name)
            .border(Color.blue)
            .fixedSize()
            .keyboardType(.numberPad)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
           
        Text(greeting)
        Button("Say Hello!"){sayHello()}
                    .padding()
        Button("Howdy"){howdy()}
                .padding()
        Button("Goodbye"){goodbye()}
                .padding()
        Button("Aloha"){aloha()}
                .padding()
            
        }}
func sayHello(){
        greeting = ("Hello, " + name)
}
func howdy(){
    greeting = ("Howdy, " + name)
}
func goodbye(){
    greeting = ("Goodbye, " + name)
}
func aloha(){
    greeting = ("Aloha, " + name)
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
}
