//
//  EquipmentInventory.swift
//  iguitarjournal
//
//  Created by Tom Atkins on 12/13/19.
//  Copyright © 2019 High Strung Productions LLC. All rights reserved.
//

import SwiftUI

struct EquipmentInventory: View {
    
    var equipment = [
    
        "Acoustic Guitar",
        "Electric Guitar",
        "Bass",
        "Amplifier",
        "PA related",
        "Pedal/effects",
        "Cables",
        "Microphones",
        "Computer interface",
        "Keyboard",
        "Computer",
        "Monitors"
        
    ]
    
    var maintenance = [
    
    "Changed Strings",
    "Cleaned Instrument",
    "Rotated pedalboard Cables",
    "Adjust Intonation",
    "Truss Rod Adjustment",
    "Change Amplifier Tubes"
    
    
    ]
    
    
    @State private var equipmentList = 0
    @State private var main = 0
    
           var minimumValue = 1.0
           var maximumValue = 100.0
           
       @State private var equipmentMM = ""
       @State private var equipmentSerial = ""
    @State private var equipmentInsured = false
       @State var showingNextView = false
    
    
    
    
    //CoreData Connector
    @Environment(\.managedObjectContext) var managedObjectContext
    
    
    
    var body: some View {
        NavigationView {
            Form {
                
                Section (header: Text("Equipment Inventory"))
                {
                
                    Picker (selection: $equipmentList, label: Text("Equipment Type"))
                    {
                    ForEach(0 ..< equipment.count) {
                        Text(self.equipment[$0])
                            }
                        }
                    
    
                    TextField("Make and Model", text: $equipmentMM)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TextField("Serial Number", text: $equipmentSerial)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                            
                    Toggle(isOn: $equipmentInsured){
                        Text("Is Insured")
                    }
                    
            Section (header: Text("Equipment Maintenance"))
                    {
                        
                        
                    Picker (selection: $main, label: Text("Maintenance Task"))
                        {
                    ForEach(0 ..< main.count) {
                            Text(self.main[$0])
                                }
                            }
            
                    
                    
                    Button (action: {
                            self.showingNextView.toggle()
                        }) {
                            Text("Music Business Planner")
                        .sheet(isPresented: $showingNextView){
                            
                            MusicBusinessPlanner()
                    }
        
                    
                }

            }
                        
                        
            }
        .navigationBarTitle("Equipment Inventory")
        }
    }
}
}

struct EquipmentInventory_Previews: PreviewProvider {
    static var previews: some View {
        EquipmentInventory()
    }
}
