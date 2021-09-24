//
//  ContentView.swift
//  Q15s WatchKit Extension
//
//  Created by Phemmy DOF on 9/22/21.
//

import SwiftUI

struct ContentView: View {
    @State var rq15 = false
    @State var q15 = false
    @State var q4 = false
    @State var crucial = false
    @State var currentDate = Date()
    @State var dateTimeString = ""
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    func values(forTimeSplit str: String) -> [String] {
        let separators = CharacterSet(charactersIn: ": ")
        return str.components(separatedBy: separators)
    }
    
    
    var body: some View {
        VStack {
            Text("\(dateTimeString)").onReceive(timer){ input in
                currentDate = input
                let formatter = DateFormatter()
                
                formatter.timeStyle = .short
                
                formatter.dateStyle = .none
                 dateTimeString = formatter.string(from: currentDate)
            }
                .padding()
            Toggle("Q15", isOn: $q15)
               
            Toggle("RQ15", isOn: $rq15) .toggleStyle(SwitchToggleStyle(tint: .red))
            
            Toggle("Q4", isOn: $q4)
            
            Toggle("Crucial", isOn: $crucial) .toggleStyle(SwitchToggleStyle(tint: .red))
            
            
            
            
            if q15 {
                Text("Checking for Q15")
                let timeToBeSplit = dateTimeString
                let arraySplitTime = values(forTimeSplit: timeToBeSplit)
                
                let mainValue = arraySplitTime[1]
                Text(mainValue)
                if mainValue == "00"
                {
//                    Vibrate
                    WKInterfaceDevice.currentDevice().playHaptic(.Success)
                    
                } else if mainValue == "15"
                {
//                    Vibrate
                } else if mainValue == "30"
                {
//                    Vibrate
                } else if mainValue == "45"{
//                    Vibrate
                }
            }
            
            if rq15 {
                Text("Checking for RQ15")
        }
            if q4 {
                Text("Checking for Q4")
        }
            if crucial {
                Text("Checking for Crucial")
        }
            
    }
        
//        func makeGesture() {
//            let generator = UINotificationFeedbackGenerator()
//        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
