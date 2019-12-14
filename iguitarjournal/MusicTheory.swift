//
//  MusicTheory.swift
//  iguitarjournal
//
//  Created by Tom Atkins on 12/13/19.
//  Copyright © 2019 High Strung Productions LLC. All rights reserved.
//

import SwiftUI

struct MusicTheory: View {
    
    var musicTheorySubject = [
        
    "Understanding Notation Principles",
    "Understanding Intervals",
    "F, G and Movable Clefs",
    "Rhythymic Notation",
    "Tablature Notation",
    "Time Signature Studies",
    "Constructing Scales",
    "Constructing Chords",
    "Key Signatures",
    "Harmonic Functions",
    "Compositional Techniques",
    "Counterpoint",
    "Fingered Bass",
    "Arrangement Symbols",
    "Chord Symbols",
    "Complex Chord Construction",
    "Advanced Studies"
    ]
    
    var musicTheorySources = [
    
        "Music Notation, A manual of Modern Practice - Gardner Read",
        "Principles of Orchestration - Nikolay Rimsky-Korsakov",
        "Jazz Composition & Orchestration - William Russo",
        "Vaideology - Steve Vai",
        "School Course",
         "Online Course",
         "Guitar Camp",
         "Private Instruction"
    ]
    
    var minimumValue = 1.0
    var maximumValue = 100.0
    
    @State private var mtsubject = 0
    @State private var mtsource = 0
    @State private var musictheorytext = ""
    @State private var warmupProgress: Double = 0
     @State var showingNextView = false
    
    //CoreData Connector
    @Environment(\.managedObjectContext) var managedObjectContext
    
    
    var body: some View {
        
        NavigationView {
                   Form {
                       Section  {
               
               Picker (selection: $mtsubject, label: Text("Subject"))
                                {
                                ForEach(0 ..< musicTheorySubject.count) {
                                Text(self.musicTheorySubject[$0])
                                    }
                                }
                             
                Picker (selection: $mtsource, label: Text("Source"))
                                {
                                ForEach(0..<musicTheorySources.count) {
                                Text(self.musicTheorySources[$0])
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
                                                 
                                                 
                                TextField("Music Theory Journal Entry", text: $musictheorytext)
                                                 .textFieldStyle(RoundedBorderTextFieldStyle())
                                                 Spacer()
                                
                                Button (action: {
                                        self.showingNextView.toggle() })
                                        {
                                        Text("Music Theory")
                                        .sheet(isPresented: $showingNextView){
                                        MusicTheory()
                                        }
                                    }
                       
                            }
                   }.navigationBarTitle("Ear Training")
    
        }
    
}
    
        struct MusicTheory_Previews: PreviewProvider {
    static var previews: some View {
        MusicTheory()
    }
}

}
