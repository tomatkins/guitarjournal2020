//
//  Warmups.swift
//  iguitarjournal
//
//  Created by Tom Atkins on 12/13/19.
//  Copyright © 2019 High Strung Productions LLC. All rights reserved.
//

import SwiftUI

struct Warmups: View {
    
    var warmupFH = [
        "One Fret, Finger & String",
        "Classic 1 2 3 4",
        "Permutations",
        "Angular across all strings"
        ]
    
    var warmupPH = [
    "Strict Alternate Picking",
    "Inside Outside Picking",
    "Double Picking",
    "String Skipping",
    "Sweep Picking",
    "Hybrid finger picking"
        ]
    
    let permutationList = [
         "1 2 3 4",
         "1 2 4 3",
         "1 3 4 2",
         "1 3 2 4",
         "1 4 2 3",
         "1 4 3 2",
         "2 1 4 3",
         "2 1 3 4",
         "2 3 1 4",
         "2 3 4 1",
         "2 4 3 1",
         "2 4 1 3",
         "3 4 1 2",
         "3 4 2 1",
         "3 2 1 4",
         "3 2 4 1",
         "3 1 4 2",
         "3 1 2 4",
         "4 3 2 1",
         "4 3 1 2",
         "4 2 3 1",
         "4 2 1 3",
         "4 1 2 3",
         "4 1 3 2"
        ]
   
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }
    @State private var randomPermutation = 0
    @State private var selectedFH = 0
    @State private var selectedPH = 0
    @State private var selectedPermutation = 0
    @State private var practiceStart = Date()
    @State private var showTimeStart = false
    @State private var formatter = DateIntervalFormatter()
    
    var minimumValue = 1.0
    var maximumValue = 100.0
    @State private var warmuptext = ""
    @State private var warmupProgress: Double = 0
    @State private var BPM = 120
   
    
    //CoreData Connector
    @Environment(\.managedObjectContext) var managedObjectContext
    
    @State var showingNextView = false
   // @State private var showingAlert = false
    
    var body: some View {
        
        
        NavigationView {
            
//           Button(action: {
//                self.showingAlert = true
//            }) {
//                Text("Start Practice Session")
//            }
//            .alert(isPresented: $showingAlert) {
//                Alert (title: Text("Starting Timer"), message: Text("Do you want me to time this practice session?"), dismissButton: .default(Text("No choice!")))
//            }
//
                     
            
            VStack {
                Form {
               
                    Section (header: Text("Remember to Stretch before practicing!"))
                    {
                    //warmup section
                
                      //first picker item
                        
                        Picker (selection: $selectedFH, label: Text("Fret Hand"))
                        {
                            ForEach(0 ..< warmupFH.count) {
                                Text(self.warmupFH[$0])
                            }
                        }
                
                        // second picker item
                        
                        
                        Picker (selection: $selectedPH, label: Text("Picking Hand"))
                        {
                            ForEach(0..<warmupPH.count) {
                                Text(self.warmupPH[$0])
                            }
                        }
                    
                        // third picker item
                        
                        Picker (selection: $selectedPermutation, label: Text("Pick your Permutation"))
                        {
                            ForEach(0..<permutationList.count) {
                                Text(self.permutationList[$0])
                            }
                        }
                // Random permutation attempt
                        
                    //    Text("Random Permutation:")
               
                
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
                
                TextField("Warmup Journal Entry", text: $warmuptext)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Spacer()
                
                    Button (action: {
                        self.showingNextView.toggle()
                    }) {
                        Text("Scales and Chords")
                        .sheet(isPresented: $showingNextView){
                            
                            ScalesChords()
                        }
                    }
                
                
                }.navigationBarTitle("Warmups")
                    
                .navigationBarItems(leading:
                Button("Home") {
                    print("Home")
                })
                
                
                .navigationBarItems(trailing:
                        Button("End Session") {
                            print("End Session Tapped")
                        })
            }
        }
     }
    }
}

    

struct Warmups_Previews: PreviewProvider {
    static var previews: some View {
        Warmups()
    }
}
