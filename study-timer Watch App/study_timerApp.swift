//
//  study_timerApp.swift
//  study-timer Watch App
//
//  Created by Noah Vario on 9/20/23.
//

import SwiftUI

@main
struct study_timer_Watch_AppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
}

class Timer{
    //Initialize the timer class with the variable
    //paused = true, meaning the timer isn't running on start
    var count = 0
    var paused = true
    
    //begin sets the countdown to 1500(seconds, aka 25 minutes) when user presses the start button
    func begin(){
        count = 1500
    }
    
    //start function allows the increment command to start counting down on the second
    //this is triggered by pressing the start button
    func start() {
        paused = false
    }
    //pause function puts the timer to a stop when the user presses the pause button
    func pause() {
        paused = true
    }
    
    func increment() {
        if(paused == false){
            count-=1
        }
    }
    func seconds(int){
        return count%60
    }
    
    func reset() {
        count = 0
    }
    func time(string: String){
        //let temp : String = count.stringValue
        //return temp
        //converts the count to a string to be returnable in the temp variable
    }
}

