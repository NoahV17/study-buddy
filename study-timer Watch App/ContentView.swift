//
//  ContentView.swift
//  study-timer Watch App
//
//  Created by Noah Vario on 9/20/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
    let timer = Timer()
    let minutes = 0
    let seconds = 0
    
        VStack {
            Text("Welcome to Study Pal!")
            Image(systemName: "stopwatch")
                .imageScale(.large)
                .foregroundColor(.green)
            
            
            Text("Study time left")
            Text("25:00")

            Button("Starts") {
                timer.start()
            }.foregroundColor(Color.green)
            
            Button(action: timer.pause) {
                Text("Pause")
                    .foregroundColor(Color.yellow)
            }
        }
        .padding()
        VStack{
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}



