//
//  ContentView.swift
//  study-timer Watch App
//
//  Created by Noah Vario on 9/20/23.
//

import SwiftUI

var count: Double = 0
var counting: Bool = false
var studying: Bool = true

struct ContentView: View {
    
    @State private var studyLength: Double = 10
    @State private var studyProgress: Double = 0
    @State private var breakLength: Double = 5
    @State private var breakProgress: Double = 0
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            Text("Hello, World!")
                .onReceive(timer) { time in
                    //Runs through and checks for if the user is in study or break state and increments the correct variable based on that
                    if counting {
                        //Runs if in the studying state
                        if studying {
                            //Runs if studying has exceeded desired length
                            if studyProgress >= studyLength {
                                print("Studying done! Congrats, time for a short break.")
                                studying = false
                                studyProgress = 0
                            }
                            //Runs if studying is still in progress
                            else {
                                studyProgress += 1
                                print("Studying for: " + String(studyProgress))
                            }
                        }
                        //Runs if not studing.. => On break
                        else {
                            //Runs if break has exceeded its desired length
                            if breakProgress >= breakLength {
                                print("Your break is over, time to get back to studying!")
                                studying = true
                                breakProgress = 0
                            }
                            //Runs if break is still in progress
                            else {
                                breakProgress += 1
                                print("Breaking for: " + String(breakProgress))
                            }
                        }
                    }
                }
            VStack {
                VStack{
                    Image(systemName: "stopwatch")
                        .imageScale(.large)
                        .foregroundColor(.green)
                    
                    Text("Study time left")
                }
                
                HStack{
                    let timer = TimeTrack()
                    Button(action: {
                        counting = true
                        print("STARTED TIMER")})
                        {
                            Image(systemName: "play")
                                .foregroundColor(Color.green)
                        }
                    Button(action: {
                        counting = false
                        print("PAUSED TIMER")})
                        {
                            Image(systemName: "pause")
                                .foregroundColor(Color.yellow)
                        }
                    Button(action: {
                        counting = false
                        breakLength = 0
                        studyLength = 0
                        print("RESET AND STOPPED TIMER")})
                        {
                            Image(systemName: "stop")
                                .foregroundColor(Color.red)
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



