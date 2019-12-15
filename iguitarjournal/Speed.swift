//
//  Speed.swift
//  iguitarjournal
//
//  Created by Tom Atkins on 12/13/19.
//  Copyright © 2019 High Strung Productions LLC. All rights reserved.
//

import SwiftUI

struct Speed: View {

    
    
    var speedStudies = [
    
        "Loosen Up, Stretch and Relax",
        "Examine Posture, Observe others",
        "Minimal Motion Focus",
        "Review Guitar Thinking Processes",
        "Play extra Slow",
        "Play past previous milestone",
        "Syncronized Alternate Picking",
        "Syncronized Sweep Picking",
        "Practice Full Legato",
        "Two Handed Trills",
        "Extreme Muted Picking"
        
    ]
    
    
    

    @State private var speedFocus = 0
    
        var minimumValue = 1.0
        var maximumValue = 100.0
        
    @State private var speedtext = ""
    @State private var speedProgress: Double = 0
    @State private var BPM = 120
     @State var showingNextView = false
    //CoreData Connector
          @Environment(\.managedObjectContext) var managedObjectContext

    
    
    var body: some View {
        NavigationView {
            Form {
                
                Section (header: Text("Practice in Tempo with metronome or Drum Machine"))
                {
                
                    Picker (selection: $speedFocus, label: Text("Speed Focus"))
                    {
                        ForEach(0 ..< speedStudies.count) {
                        Text(self.speedStudies[$0])
                            }
                        }
                    
            
                    
                
            }
                Section {
                                    //common journal section
                            HStack {
                                Text("Performance Rating")
                                Slider(value: $speedProgress, in: minimumValue...maximumValue)
                                Text("\(Int(speedProgress))")
                            
                            }
                            HStack {
                            Stepper("Beats Per Minute", value: $BPM, in: 20...250)
                            Text("\(BPM) BPM")
                            }
                            
                            TextField("Speed Journal Entry", text: $speedtext)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            Spacer()
             
                    
                    Button (action: {
                            self.showingNextView.toggle()
                        }) {
                            Text("Songwriting")
                        .sheet(isPresented: $showingNextView){
                            
                            Songwriting()
                    }
                }
                    
                    
                    
                }

            }
        .navigationBarTitle("Speed")
        }
    }
}

struct Speed_Previews: PreviewProvider {
    static var previews: some View {
        Speed()
    }
}
