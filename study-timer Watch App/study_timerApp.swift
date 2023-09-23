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



class TimeTrack{
    //Initialize the timer class with the variable
    //paused = true, meaning the timer isn't running on start
    var studyLength = 1430
    var breakLength = 300
    var paused = true
    
    //start function allows the increment command to start counting down on the second
    //this is triggered by pressing the start button
    func start() {
        paused = false
        print("start")
    }
    //pause function puts the timer to a stop when the user presses the pause button
    func pause() {
        paused = true
        print("pause")
    }
    
    func reset() {
        studyLength = 0
        print("reset")
    }
    
    func decrement() {
        if(paused == false){
            studyLength-=1
            print(studyLength)
        }
    }
    
    func seconds() -> String {
        print(String(studyLength%60))
        return String(studyLength%60)
    }
    func minutes() -> String{
        print(String(studyLength/60))
        return String(studyLength/60)
    }
    
    func changeStudyLength(len: Int){
        studyLength = len
    }
    func changeBreakLength(len: Int){
        breakLength = len
    }
    
    func time(string: String){
        //let temp : String = count.stringValue
        //return temp
        //converts the count to a string to be returnable in the temp variable
    }
}

