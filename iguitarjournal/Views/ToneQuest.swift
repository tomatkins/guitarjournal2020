//
//  ToneQuest.swift
//  iguitarjournal
//
//  Created by Tom Atkins on 12/14/19.
//  Copyright © 2019 High Strung Productions LLC. All rights reserved.
//

import SwiftUI

struct ToneQuest: View {
    
    
    
    var toneQuestStage = [

    "I have no tone ideas",
    "I love what I have, why change?",
    "I have some ideas but no funds",
    "Tone is in the Hands, I need to Practice",
    "Researching favorite players tones",
    "Changing guitar settings (tone/volume)",
    "Changing amplifier settings",
    "Changing amplifier tubes",
    "Changing pedal settings",
    "Changing pedalboard order",
    "Building Gain Structure",
    "Experimenting with pedals",
    "Experimenting with guitars",
    "Experimenting with rack effects, preamps",
    "Experimenting with cables",
    "Experimenting with string brands",
    "Experimenting with different pick widths"
    ]

    @State private var toneQuestStatus = 0
    
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
                
                Section
                {
                
                    Picker (selection: $toneQuestStatus, label: Text("ToneQuest Status"))
                    {
                        ForEach(0 ..< toneQuestStage.count) {
                        Text(self.toneQuestStage[$0])
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
                            Text("Equipment Inventory")
                        .sheet(isPresented: $showingNextView){
                            
                            EquipmentInventory()
                    }
                }
                    
                    
                    
                }

            }
        .navigationBarTitle("ToneQuest")
        }
    }
}

struct ToneQuest_Previews: PreviewProvider {
    static var previews: some View {
        ToneQuest()
        
           // .environment(\.colorScheme, .dark)
    }
}
