//
//  Sightreading.swift
//  iguitarjournal
//
//  Created by Tom Atkins on 12/13/19.
//  Copyright © 2019 High Strung Productions LLC. All rights reserved.
//

import SwiftUI

struct Sightreading: View {
    
    
    var sightReadingSources = [
    
        "Guitar Sightreading Studies - Carol Kaye",
        "Advanced Reading Studies for Guitar - William Leavitt",
        "Charlie Parker Omnibook - Jamey Aebersold",
        "The Real Book - Hal Leonard",
        "Foundations in Rock Guitar - Tom Atkins",
        "Berklee Press",
         "MI Press",
         "Chord Theory - Ted Greene",
         
         "Free Public Domain Scores- Internet",
         "Private Instruction Sources"
    ]
    
    
    
    
    
    
    @State private var sightreadingsource = 0
    
        var minimumValue = 1.0
        var maximumValue = 100.0
        
    @State private var warmuptext = ""
    @State private var warmupProgress: Double = 0
    @State private var BPM = 120
    
    //CoreData Connector
          @Environment(\.managedObjectContext) var managedObjectContext
    
    @State var showingNextView = false
          
        
        var body: some View {
            NavigationView {
                Form {
                    
                    Section (header: Text("Practice in Tempo with metronome or Drum Machine"))
                    {
                    
                        Picker (selection: $sightreadingsource, label: Text("Sight Reading Source"))
                        {
                            ForEach(0 ..< sightReadingSources.count) {
                            Text(self.sightReadingSources[$0])
                                }
                            }
                        
                
                        
                    
                }
                    Section {
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
                                
                                TextField("Scales Journal Entry", text: $warmuptext)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                Spacer()
                 
                        
                        Button (action: {
                                self.showingNextView.toggle()
                            }) {
                                Text("Transcription")
                            .sheet(isPresented: $showingNextView){
                                
                                Transcription()
                        }
                    }
                        
                        
                        
                    }

                }
            .navigationBarTitle("Sight Reading")
            }
        }
    }

struct Sightreading_Previews: PreviewProvider {
    static var previews: some View {
        Sightreading()
    }
}
