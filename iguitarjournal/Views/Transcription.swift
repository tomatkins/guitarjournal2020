//
//  Transcription.swift
//  iguitarjournal
//
//  Created by Tom Atkins on 12/13/19.
//  Copyright © 2019 High Strung Productions LLC. All rights reserved.
//

import SwiftUI

struct Transcription: View {
    
    
    var transcriptionStage = [
    
    "Initial Key and time signatures charted out",
    "Specific Instrument Isolated",
    "Modulations, Overall Chord Progressions Identified",
    "Analyzing and notating Specific Challenging Areas",
    "Rhythmic challenges isolated",
    "Finger Position/Tablature/Notation completed",
    "Full Instrumentation or Specific Instrument Chart Completed",
    "Reviewed by Teacher/Collegue",
    "Shared"
    
    ]


    var minimumValue = 1.0
    var maximumValue = 100.0
   @State private var transcriptionTitle = ""
    @State private var transcriptionArtist = ""
    @State private var transcriptionStatus = 0
    @State private var transcriptionjournaltext = ""
    @State private var warmupProgress: Double = 0
    @State private var BPM = 120
    @State var showingNextView = false
    
    
    
    //CoreData Connector
    @Environment(\.managedObjectContext) var managedObjectContext
    
    
    
    var body: some View {
        NavigationView {
            Form {
                
                Section
              {
                 
                
                
                TextField("Transcription Title", text: $transcriptionTitle)
                                               .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("Artist/Composer Name", text: $transcriptionArtist)
                                              .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Picker (selection: $transcriptionStatus, label: Text("Transcription Status"))
                {
                    ForEach(0 ..< transcriptionStage.count) {
                        Text(self.transcriptionStage [$0])
                    }
                }
            }
              Section
                {
                    //common journal section
                                   HStack {
                                       
                                       Text("Performance Rating")
                                       Slider(value: $warmupProgress, in: minimumValue...maximumValue)
                                       Text("\(Int(warmupProgress))")
                                   
                                   }
                                   HStack {
                                   Stepper("Beats Per Minute", value: $BPM, in: 20...250)
                                   Text("\(BPM) BPM")
                                   }
                                   
                                   TextField("Transcription Journal Entry", text: $transcriptionjournaltext)
                                   .textFieldStyle(RoundedBorderTextFieldStyle())
                                   Spacer()
                                   
                                       Button (action: {
                                           self.showingNextView.toggle()
                                       }) {
                                           Text("Structured Improvisation")
                                           .sheet(isPresented: $showingNextView){
                                               
                                               StructuredImprov()
                                           }
                                       }
                    
                    
                    
                }
                
            }.navigationBarTitle("Transcription")
            
            }
    }
}

struct Transcription_Previews: PreviewProvider {
    static var previews: some View {
        Transcription()
    }
}
