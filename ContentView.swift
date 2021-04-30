//
//  ContentView.swift
//  tabs
//
//  Created by user921424 on 4/20/21.
//

import SwiftUI

struct alarm_content: View {
    @State var wakeup = Date();
    @State private var alarm_on = true;
    
    var body: some View {
        VStack {
            DatePicker("choose alarm time", selection: $wakeup, displayedComponents: .hourAndMinute)
                .padding(30)
        
            Toggle("Alarm ON/OFF", isOn: $alarm_on ).padding(30)
            
            if alarm_on {
                Text("alarm on");
            }
            
            Button(action: {print(wakeup)}, label: {
                    Text("Save")
                        .buttonStyle(DefaultButtonStyle()) }).padding(90)
        }
    }
}

struct sync_time_content: View {

    var body: some View {
        VStack {
            Text("Sync Current Time to Punching Bag:")
            Button(action: {print("update time")}, label: {
                    Text("Sync")
                        .buttonStyle(DefaultButtonStyle()) }).padding(20)
        }
    }
}
struct ContentView: View {
    
    var body: some View {
        TabView() {
            alarm_content().tabItem {
                Text("Alarm")
                }
            
            sync_time_content().tabItem {
                Text("Sync Time")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
