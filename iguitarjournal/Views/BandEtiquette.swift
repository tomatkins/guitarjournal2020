//
//  BandEtiquette.swift
//  iguitarjournal
//
//  Created by Tom Atkins on 12/14/19.
//  Copyright © 2019 High Strung Productions LLC. All rights reserved.
//

import SwiftUI
import UIKit
import CoreData

struct BandEtiq: View {
    
    //core data connectors
    @Environment(\.managedObjectContext) var managedObjectContext
    
 //   @FetchRequest(fetchRequest: BandEtiq.allBandEtiquetteFetchRequest()) var bandEtiqs: FetchedResults<BandEtiq>

    @State private var showTextArea = false
    
    
    let etiquette = [
    
    "Be Honest with yourself",
    "Help Organize anything, from set list to PA Cables",
    "Help set up and tear down for shows",
    "Help develop band merchandise",
    "Contribute to productive working Atmosphere",
    "Be helpful and constructive to bandmates and supporters",
    "Be open and honest in all communications",
    "Understand your responsibilities",
    "Encourage Healthy lifestyle choices",
    "Know when to Party, and still be responsible for your own actions",
    "Dispell stereotypes by rising above them",
    "Accept Constructive Critism",
    "Accept Flattery, and say Thank you",
    "Demonstrate Gratitude for the opportunity to perform for an audience of two or two thousand",
    "Take time to reflect",
    "Speak and act in a way to bring peace to others through your music.",
    "Be Mindful of your thoughts, be calm",
    "Demonstrate patience toward yourself and others",
    "Think before reacting in emotional conditions",
    "Perform at your very best, no excuses.",

    ]
    
    
    @State private var etiquetteFocus = 0
    @State private var etiquetteJournal = ""
    let minimumValue = 1.0
    let maximumValue = 100.0
    @State private var etiquetteProgress: Double = 50
    var sliderValueRounded: Int {
        Int(self.etiquetteProgress.rounded())
    }
    lazy var sliderConverted = String(sliderValueRounded)
    
    var body: some View {
        NavigationView {
            Form {
                
                Section (header: Text("Use this Routine to Check your Ego.")) {
                 
                Picker (selection: $etiquetteFocus, label: Text("Etiquette Focus"))
                {
                    ForEach(0 ..< etiquette.count) {
                        Text(self.etiquette [$0])
                    }
                }
            
                    HStack {
                                       
                    Text("Performance Rating")
                    Slider(value: $etiquetteProgress, in: minimumValue...maximumValue)
                    Text("\(Int(etiquetteProgress))")
                                   
                            }
                    
                    
//            Button(action: {
//                self.showTextArea.toggle()
//                    })
//                {
//                Text("Journal Entry")
//                    }.sheet(isPresented: $showTextArea) {
//
//                    UITextViewWrapper()
//
//            }
                    
                    
                    
                    MultilineTextField("Etiquette Journal Entry", text: $etiquetteJournal)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                       
                    HStack (alignment: .center){
                       Spacer()
                        Button("Save Entry") {
                            print("button Tapped")
                        }
                    }
                
                    .font(.headline)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.red)
                .cornerRadius(15)
                }
                    
                    
                
                Section (header: Text("Previous Entries"))  {
                    
                    Dashboard()
                    
                    
                    
                }
            }.navigationBarTitle("Band Etiquette")
            
            }
            
    }
}

struct BandEtiquette_Previews: PreviewProvider {
    static var previews: some View {
        BandEtiq()
    }
}
