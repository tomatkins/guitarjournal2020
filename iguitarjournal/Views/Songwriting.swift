//
//  Songwriting.swift
//  iguitarjournal
//
//  Created by Tom Atkins on 12/13/19.
//  Copyright © 2019 High Strung Productions LLC. All rights reserved.
//

import SwiftUI

struct Songwriting: View {
    
    
    
    
    var songStage = [
    
    "Inspired thoughts only",
    "Hendrix Napkin (sketch)",
    "Voice Memo",
    "Basic Structure Complete, needs lyrics",
    "lyrics and structure complete, needs demo",
    "Basic Demo completed, needs arrangement help",
    "Performed live in front of audience",
    "Final version recorded and mastered",
    "Sent to Performance Rights Organization",
    "Copyright Secured",
    "Published",
    "Performing live",
    "Final evaluation"
    ]
    

     var minimumValue = 1.0
     var maximumValue = 100.0
    @State private var songTitle = ""
     @State private var lyricist = ""
    @State private var  arrangerComposer = ""
    @State private var cowriters = ""
     @State private var songStatus = 0
     @State private var songwritingJournal = ""
     @State private var songwritingProgress: Double = 0
     @State private var BPM = 120
     @State var showingNextView = false
    
    
     //CoreData Connector
     @Environment(\.managedObjectContext) var managedObjectContext
    
    
    
    var body: some View {
        NavigationView {
            Form {
                
                Section
              {
                 
                
                
                TextField("Song Title", text: $songTitle)
                                               .textFieldStyle(RoundedBorderTextFieldStyle())
                
                
                TextField("Lyricist", text: $lyricist)
                                              .textFieldStyle(RoundedBorderTextFieldStyle())
                
                
                TextField("Arranger/Composer", text: $arrangerComposer)
                                              .textFieldStyle(RoundedBorderTextFieldStyle())

                TextField("Cowriters", text: $cowriters)
                                                         .textFieldStyle(RoundedBorderTextFieldStyle())
                Picker (selection: $songStatus, label: Text("Song Status"))
                {
                    ForEach(0 ..< songStage.count) {
                        Text(self.songStage [$0])
                    }
                }
            }
              Section
                {
                    //common journal section
                                   HStack {
                                       
                                       Text("Performance Rating")
                                       Slider(value: $songwritingProgress, in: minimumValue...maximumValue)
                                       Text("\(Int(songwritingProgress))")
                                   
                                   }
                                   HStack {
                                   Stepper("Beats Per Minute", value: $BPM, in: 20...250)
                                   Text("\(BPM) BPM")
                                   }
                                   
                                   TextField("Transcription Journal Entry", text: $songwritingJournal)
                                   .textFieldStyle(RoundedBorderTextFieldStyle())
                                   Spacer()
                                   
                                       Button (action: {
                                           self.showingNextView.toggle()
                                       }) {
                                           Text("ToneQuest")
                                           .sheet(isPresented: $showingNextView){
                                               
                                               ToneQuest()
                                           }
                                       }
                    
                    
                    
                }
                
            }.navigationBarTitle("Songwriting")
            
            }
    }
    
    
    
    
}

struct Songwriting_Previews: PreviewProvider {
    static var previews: some View {
        Songwriting()
    }
}
