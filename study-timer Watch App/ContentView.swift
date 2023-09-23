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
    //let minutes = 0
    //let seconds = 0
        let timeText = timer.minutes()+":"+timer.seconds()
        
        
        VStack {
            Text("Welcome to Study Pal!")
            Image(systemName: "stopwatch")
                .imageScale(.large)
                .foregroundColor(.green)
            
            
            Text("Study time left")
            if(1==1){
                Text(timeText)
            }
            Button("Starts") {
                timer.start()
            }.foregroundColor(Color.green)
            
            Button(action: timer.pause) {
                Text("Pause")
                    .foregroundColor(Color.yellow)
            }
            
            Button(action: timer.decrement) {
                Text("-1")
                    .foregroundColor(Color.red)
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



