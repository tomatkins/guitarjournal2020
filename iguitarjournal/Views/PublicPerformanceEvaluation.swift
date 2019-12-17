//
//  PublicPerformanceEvaluation.swift
//  iguitarjournal
//
//  Created by Tom Atkins on 12/14/19.
//  Copyright © 2019 High Strung Productions LLC. All rights reserved.
//

import SwiftUI

struct PublicPerformanceEvaluation: View {
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }
    
    @State private var gigDate = Date()
    
    
    
    
  var performanceChecklist = [
   
    "Preparation went as expected",
    "Better preparation would have yielded better performance",
    "Distracted",
    "Accuracy of Notes and Rhythms",
       "Effective use of Dynamics",
       "Appropriate Tempo",
       "Engaging Stage Presence",
       "Audience Response",
       "Reviewed Audio of Performance",
       "Reviewed Video of Performance",
       "Review of Social Media of Performance"
   
   ]
    
    var performanceType = [
    
    "Solo performance",
    "Coverband",
    "Original Band",
    "Invited as Guest",
    "Temporary Fill in",
    "Side Project"
    
    
    ]
    
    
    
   @State private var typeofPerformance = 0
    @State private var peformanceDetails = ""
    @State private var peformanceLocation = ""
    @State private var peformanceDate = ""
   @State private var performanceCheck = 0
   var minimumValue = 1.0
   var maximumValue = 100.0
          
      @State private var performanceJournal = ""
      @State private var performanceProgress: Double = 0
      @State var showingNextView = false
   
   
   
   //CoreData Connector
   @Environment(\.managedObjectContext) var managedObjectContext
   
    
    
    var body: some View {
        NavigationView {
            Form {
                
                Section (header: Text("Remember to evaluate a day after the performance. "))
                {
                
                   Picker (selection: $typeofPerformance, label: Text("Type of Performance"))
                                      {
                                          ForEach(0 ..< performanceType.count) {
                                          Text(self.performanceType[$0])
                                              }
                                          }
                                      
                    
                    
                    TextField("Performance Details", text: $peformanceDetails)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                
                    DatePicker(selection: $gigDate, in: ...Date(), displayedComponents: .date) {
                                    Text("Performance Date")
                                }

                 
                    
                    
                    
                    Picker (selection: $performanceCheck, label: Text("Review"))
                    {
                        ForEach(0 ..< performanceChecklist.count) {
                        Text(self.performanceChecklist[$0])
                            }
                        }
                    
            
                    
                
            }
                Section {
                                    //common journal section
                            HStack {
                                Text("Performance Rating")
                                Slider(value: $performanceProgress, in: minimumValue...maximumValue)
                                Text("\(Int(performanceProgress))")
                            
                            }
                           
                            
                            TextField("Performance Journal Entry", text: $performanceJournal)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            Spacer()
             
                    
                    Button (action: {
                            self.showingNextView.toggle()
                        }) {
                            Text("Goal Focus")
                        .sheet(isPresented: $showingNextView){
                            
                            GoalFocus()
                    }
                }
                    
                    
                    
                }

            }
        .navigationBarTitle("Performance Evaluation")
        }
    }
}

struct PublicPerformanceEvaluation_Previews: PreviewProvider {
    static var previews: some View {
        PublicPerformanceEvaluation()
    }
}
