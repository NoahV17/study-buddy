//
//  ContentView.swift
//  study-timer Watch App
//
//  Created by Noah Vario on 9/20/23.
//

import SwiftUI

var count: Double = 0
var counting: Bool = false

struct ContentView: View {
    
    @State private var studyLength: Double = 0
    @State private var studyProgress: Double = 0
    @State private var breakLength: Double = 0
    @State private var breakProgress: Double = 0
    
    var body: some View {
        VStack {
            
            VStack {
                VStack{
                    Image(systemName: "stopwatch")
                        .imageScale(.large)
                        .foregroundColor(.green)
                    
                    Text("Study time left")
                }
                
                HStack{
                    let timer = TimeTrack()
                    Button(action: timer.run) {
                            Image(systemName: "play")
                                .foregroundColor(Color.green)
                        }
                    Button(action: timer.pause) {
                        Image(systemName: "pause")
                            .foregroundColor(Color.yellow)
                    }
                    Button(action: timer.reset) {
                        Image(systemName: "stop").foregroundColor(Color.red)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



