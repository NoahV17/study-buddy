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
    var studyLength = 10
    var studyPassed = 0
    var breakLength = 5
    var breakPassed = 0
    var running = false
    
    //start function allows the increment command to start counting down on the second
    //this is triggered by pressing the start button
    func start() {
        running = true
        print("start")
    }
    //pause function puts the timer to a stop when the user presses the pause button
    func pause() {
        running = true
        print("pause")
    }
    
    func reset() {
        studyLength = 0
        print("reset")
    }
    
    func run() {
        if(running == true && studyPassed<studyLength){
            let timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
                        self.studyPassed += 1
                        print("ran")
                    }
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
    
}

