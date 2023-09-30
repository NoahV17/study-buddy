//
//  ContentView.swift
//  study-timer Watch App
//
//  Created by Noah Vario on 9/20/23.
//

import SwiftUI

var count: Double = 0

struct ContentView: View {
    
    @State private var progress: Double = 0
    
    @State private var progress1: Double = 0

        let timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
            self.progress1 += 0.1
        }

        var body: some View {
            VStack {
                ProgressView(value: progress, total: 100).tint(.green)
            }
        }
    
    func longRunningFunction() {
        // This function takes a long time to run.
        
        for i in 0..<100 {
            // Update the progress bar.
            self.progress = Double(i) / 100.0
            
            // Sleep for 0.1 seconds.
            sleep(1)
        }
    }
    
    var body: some View {
        VStack {
            
            VStack {
                VStack{
                    Image(systemName: "stopwatch")
                        .imageScale(.large)
                        .foregroundColor(.green)
                    
                    Text("Study time left")
                    ProgressView(value: progress, total: 100).tint(.green)
                }
                
                HStack{
                    let timer = TimeTrack()
                    Button(action: {
                        self.longRunningFunction()}) {
                            Image(systemName: "play")
                                .foregroundColor(Color.green)
                        }
                    Button(action: timer.pause) {
                        Image(systemName: "pause")
                            .foregroundColor(Color.yellow)
                    }
                    Button(action: timer.decrement) {
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



