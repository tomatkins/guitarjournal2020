//
//  MusicBusinessPlanner.swift
//  iguitarjournal
//
//  Created by Tom Atkins on 12/14/19.
//  Copyright © 2019 High Strung Productions LLC. All rights reserved.
//

import SwiftUI

struct MusicBusinessPlanner: View {
    
    var musicBusinessTask = [
    
        
        "Familarize yourself with the Music Business",
        "Learn about Managers",
        "Learn about Booking Agents",
        "Learn about What a Record Label does",
        "Learn about Copyrights",
        "Learn about Publishing",
        "Learn about Performance Rights Organizations",
        "Update Business Contacts",
        "Update Current Promotion Tasks",
        "Post/Plan Social Media updates",
        "Post/Create Flyers",
        "Research local Events",
        "Identify New Business Team members",
        "Check in with Business Team",
        "Review Financials",
        "Promote Products",
    
    ]
    
    
    @State private var musicBusinessTaskList = 0
    var minimumValue = 1.0
    var maximumValue = 100.0
           
       @State private var toneQuestJournal = ""
       @State private var toneQuestProgress: Double = 0
       @State var showingNextView = false
    
    
    
    //CoreData Connector
    @Environment(\.managedObjectContext) var managedObjectContext
    
    
    var body: some View {
        NavigationView {
            Form {
                
                Section (header: Text("Music Business Task/Planner"))
                {
                
                    Picker (selection: $musicBusinessTaskList, label: Text("Tasks"))
                    {
                        ForEach(0 ..< musicBusinessTask.count) {
                        Text(self.musicBusinessTask[$0])
                            }
                        }
                    
            
                    
                
            }
                Section {
                                    //common journal section
                            HStack {
                                Text("Performance Rating")
                                Slider(value: $toneQuestProgress, in: minimumValue...maximumValue)
                                Text("\(Int(toneQuestProgress))")
                            
                            }
                           
                            
                            TextField("ToneQuest Journal Entry", text: $toneQuestJournal)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            Spacer()
             
                    
                    Button (action: {
                            self.showingNextView.toggle()
                        }) {
                            Text("Performance Evaluation")
                        .sheet(isPresented: $showingNextView){
                            
                            PublicPerformanceEvaluation()
                    }
                }
                    
                    
                    
                }

            }
        .navigationBarTitle("Music Business")
        }
    }
}

struct MusicBusinessPlanner_Previews: PreviewProvider {
    static var previews: some View {
        MusicBusinessPlanner()
    }
}
