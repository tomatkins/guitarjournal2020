//
//  ScalesChords.swift
//  iguitarjournal
//
//  Created by Tom Atkins on 12/13/19.
//  Copyright © 2019 High Strung Productions LLC. All rights reserved.
//

import SwiftUI

struct ScalesChords: View {
    
    var Key = [
           "C",
           "G",
           "D",
           "A",
           "E",
           "B",
           "F#,Gb",
           "C#, Db",
           "Ab",
           "Eb",
           "Bb",
           "F"
           ]
       
       var scaleType = [
       "Major (Ionian)",
       "Minor (Aeolian)",
       "Dorian",
       "Phyrigian",
       "Lydian",
       "Mixolydian",
       "Locrian",
       "Major Pentatonic",
       "Minor Pentatonic",
       "Diminished",
       "Exotic"
           ]
       
       let chordList = [
           "Major",
           "Major 7th",
           "Minor",
           "Minor 7th",
           "Dominant 7th",
           "Diminished",
           "Diminished 7th",
           "Sus2",
           "Sus4",
           "Major 6",
           "Minor 9",
           "6/9",
           "13"
        
           ]
    
    
    let sequences = [
              "Straight Up and Down",
              "Ascending 2nds, Descending 2nds",
              "Ascending 3rds, Descending 3rds",
              "Ascending fours, Descending fours",
              "Ascending fives, Descending fives",
               "Ascending sixes, Descending sixes",
               "Custom Mix and Match",
               "Hanon Melodic Styles",
               "Arpeggiated Chord Sweeps, triads",
               "Arpeggiated Chord Sweeps, extended intervals",
               "three notes one String, one note next String",
               "Four notes per String"
              ]
       
    @State private var selectedKey = 0
    @State private var selectedScale = 0
    @State private var selectedChord = 0
    @State private var selectedSequence = 0
    
    
    
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
                
                    Picker (selection: $selectedKey, label: Text("Key Signature"))
                    {
                        ForEach(0 ..< Key.count) {
                        Text(self.Key[$0])
                            }
                        }
                    
                    Picker (selection: $selectedScale, label:
                    Text("Scale Type"))
                    {
                        ForEach(0 ..< scaleType.count) {
                            Text(self.scaleType[$0])
                            
                        }
                    }
                    
                    Picker (selection: $selectedChord, label:
                        Text("Chord"))
                    {
                        ForEach(0 ..< chordList.count) {
                            Text(self.chordList[$0])
                        }
                    }
                    
                    Picker (selection: $selectedSequence, label:
                                Text("Sequence"))
                                       {
                                           ForEach(0 ..< sequences.count) {
                                               Text(self.sequences[$0])
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
                            Text("Ear Training")
                        .sheet(isPresented: $showingNextView){
                            
                            EarTraining()
                    }
                }
                    
                    
                    
                }

            }
        .navigationBarTitle("Scales and Chords")
        }
    }
}

struct ScalesChords_Previews: PreviewProvider {
    static var previews: some View {
        ScalesChords()
    }
}
