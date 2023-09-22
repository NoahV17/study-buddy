//
//  ContentView.swift
//  study-timer Watch App
//
//  Created by Noah Vario on 9/20/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Welcome to Study Pal!")
            Image(systemName: "stopwatch")
                .imageScale(.large)
                .foregroundColor(.green)
            
            let timer = Timer()
            Text("Study time left")
            Text("25:00")

            Button(action: timer.start) {
                Text("Start")
                    .foregroundColor(Color.green)
            }
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



