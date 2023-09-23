//
//  ContentView.swift
//  study-timer Watch App
//
//  Created by Noah Vario on 9/20/23.
//

import SwiftUI




struct ContentView: View {
    var body: some View {
        let timer = TimeTrack()
        VStack {
            VStack{
                Image(systemName: "stopwatch")
                    .imageScale(.large)
                    .foregroundColor(.green)
                
                Text("Study time left")
                ProgressView(value: 10, total: 15).tint(.green)
            }
            Spacer()
                .frame(width: 0.0, height: 100.0)
            HStack{
                Button(action: timer.start) {
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
        .padding()

    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



