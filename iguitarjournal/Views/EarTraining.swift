//
//  EarTraining.swift
//  iguitarjournal
//
//  Created by Tom Atkins on 12/13/19.
//  Copyright © 2019 High Strung Productions LLC. All rights reserved.
//

import SwiftUI


struct EarTraining: View {
    
    
    var earTrainingPractice = [
              "Personal Ear Training Chart",
              "Melodic Intervals",
              "Harmonic Intervals",
              "Chords, Inversions",
              "Rhythmic Dictation",
              "Melodic Dictation"
              ]
          
    var trainingSource = [
            "Personal Ear Training Chart",
            "teoria.com",
            "Tone from Codalabs.io",
            "Jamming with Friends",
            "Sing Through Music Theory",
            "Teacher Guided"
              ]
    
    var minimumValue = 1.0
    var maximumValue = 100.0
    
    @State private var etp = 0
    @State private var ts = 0
    @State private var warmuptext = ""
    @State private var warmupProgress: Double = 0
    @State private var BPM = 120
        
    @State var showingNextView = false
    
    //CoreData Connector
         @Environment(\.managedObjectContext) var managedObjectContext

         
    
    var body: some View {
        
        NavigationView {
            Form {
                Section (header: Text("Remember to Stretch before practicing!")) {
        
        Picker (selection: $etp, label: Text("Practice"))
                              {
                                  ForEach(0 ..< earTrainingPractice.count) {
                                      Text(self.earTrainingPractice[$0])
                                  }
                              }
                      
                              Picker (selection: $ts, label: Text("Source"))
                              {
                                  ForEach(0..<trainingSource.count) {
                                      Text(self.trainingSource[$0])
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
                                          
                                          
                                          TextField("Ear Training Journal Entry", text: $warmuptext)
                                          .textFieldStyle(RoundedBorderTextFieldStyle())
                                          Spacer()
                Button (action: {
                                       self.showingNextView.toggle()
                                   }) {
                                       Text("Music Theory")
                                       .sheet(isPresented: $showingNextView){
                                           MusicTheory()
                                       }
                                   }
                
                
                
                
                                          }
                              
                              
            }
        .navigationBarTitle("Ear Training")
        }
    
    }
}

struct EarTraining_Previews: PreviewProvider {
    static var previews: some View {
        EarTraining()
    }
}
