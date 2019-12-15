//
//  StructuredImprov.swift
//  iguitarjournal
//
//  Created by Tom Atkins on 12/13/19.
//  Copyright © 2019 High Strung Productions LLC. All rights reserved.
//

import SwiftUI

struct StructuredImprov: View {
    
    
  
    
    var improvTrackSources = [
      
          "Guitopia",
          "Fender Jam Play",
          "JamTrax",
          "TrueFire Course",
          "ArtistWorks Lessons",
          "Elevated Jam Tracks",
          "Tom Quayle Backing Tracks",
          "Spark Amp Tracks",
        "Self Made"

      ]
    
    var improvConcepts = [
      
          "melody/melodic development",
          "melodic repetition",
          "rhythmic repetition",
          "imitation",
          "rhythmic focus",
          "Chordal Soloing",
          "arpeggios/intervals",
          "Speed and Control",
          "Phrasing and Timing"

      ]
    
    var minimumValue = 1.0
       var maximumValue = 100.0
      @State private var improvTitle = ""
       @State private var improvArtist = ""
    @State private var improvSource = 0
       @State private var improvConcept = 0
       @State private var improvjournaltext = ""
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
                    
                   
                   
                   TextField("Improv Track Title", text: $improvTitle)
                                                  .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                   TextField("Backing Track Info (Key etc.)", text: $improvArtist)
                                                 .textFieldStyle(RoundedBorderTextFieldStyle())
                   
                   Picker (selection: $improvConcept, label: Text("Track Source"))
                   {
                       ForEach(0 ..< improvTrackSources.count) {
                           Text(self.improvTrackSources [$0])
                       }
                   }
              
                    Picker (selection: $improvSource, label: Text(" Improv Concept"))
                    {
                        ForEach(0 ..< improvConcepts.count) {
                            Text(self.improvConcepts [$0])
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
                                      
                                      TextField("Improv Journal Entry", text: $improvjournaltext)
                                      .textFieldStyle(RoundedBorderTextFieldStyle())
                                      Spacer()
                                      
                                          Button (action: {
                                              self.showingNextView.toggle()
                                          }) {
                                              Text("Speed")
                                              .sheet(isPresented: $showingNextView){
                                                  
                                                  Speed()
                                              }
                                          }
                       
                       
                       
                   }
                   
               }.navigationBarTitle("Improvisation")
               
               }
       }










}

struct StructuredImprov_Previews: PreviewProvider {
    static var previews: some View {
        StructuredImprov()
    }
}
