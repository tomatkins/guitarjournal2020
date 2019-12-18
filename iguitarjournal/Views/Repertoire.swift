//
//  Repertoire.swift
//  iguitarjournal
//
//  Created by Tom Atkins on 12/17/19.
//  Copyright © 2019 High Strung Productions LLC. All rights reserved.
//

import SwiftUI

struct Repertoire: View {
    
    let repertoireStage = [
      
      "Just Started Learning",
      "Sheet Music/Tablature or transcription ready",
      "Working out the harder parts",
      "Can play thru the entire song/piece",
      "Building Confidence",
      "Teacher says it's ready, but I'm not sure.",
      "I Have it down cold",
      "Performed Publicly for First Time",
      "Modifying approach due to public performance issues",
      "Evaluating Public Performance",
      "Mastered it"
      
      ]

    let keySignature = [
    
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
    
    let timeSignature = [
    
    "4/4",
    "3/4",
    "5/4",
    "7/4",
    "6/8",
    "5/8",
    "9/8",
    "11/8",
    "Variable",
    "I dont know",
    "Odd Time Not Listed"
    

    ]
    
    let genre = [
    
    "Adult Contemporary",
    "Alternative",
    "Anime",
    "Blues",
    "Celtic",
    "Children's Music",
    "Classical",
    "Comedy",
    "Commercial",
    "Country",
    "Dance",
    "Disco",
    "Disney",
    "Easy Listening",
    "Electronic",
    "English Traditional",
    "Enka",
    "French Pop",
    "Folk Music",
    "Irish Traditional",
    "German Folk",
    "German Pop",
    "Fitness/Workout",
    "Hip-Hop/Rap",
    "Holiday",
    "Indie Pop",
    "Industrial",
    "Irish Traditional",
    "Inspirational-Christian & Gospel",
    "Instrumental",
    "J-Pop",
    "Jazz",
    "Karaoke",
    "Kayokyoku",
    "Latin",
    "New Age",
    "Opera",
    "Pop",
    "R&B Soul",
    "Reggae",
    "Rock",
    "Singer Songwriter",
    "Soundtrack",
    "Spoken Word",
    "Tex-Mex, Tejano",
    "Vocal",
    "World",
    
    
    ]
    
    
      let minimumValue = 1.0
      let maximumValue = 100.0
     @State private var repStatus = 0
     @State private var repTitle = ""
      @State private var repArtist = ""
     @State private var repKeySig = 0
    @State private var repTimeSig = 0
    @State private var repGenre = ""
      @State private var repjournaltext = ""
      @State private var repProgress: Double = 0
      @State private var BPM = 120
      @State var showingNextView = false
      
      
      
      //CoreData Connector
      @Environment(\.managedObjectContext) var managedObjectContext
      
      
    
    
    
    var body: some View {
        NavigationView {
            Form {
                
                Section (header: Text("Add New Song/Composition to your Repertoire"))
              {
                 
                
                TextField("Song Title", text: $repTitle)
                                               .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("Artist/Composer", text: $repArtist)
                                              .textFieldStyle(RoundedBorderTextFieldStyle())
                
            
                Picker (selection: $repKeySig, label: Text("Key Signature"))
                                           {
                                               ForEach(0 ..< keySignature.count) {
                                                   Text(self.keySignature [$0])
                                               }
                                           }
                
                Picker (selection: $repTimeSig, label: Text("Time Signature"))
                             {
                                 ForEach(0 ..< timeSignature.count) {
                                     Text(self.timeSignature [$0])
                                 }
                             }
                
                
            
                Picker (selection: $repGenre, label: Text("Genre"))
                             {
                                 ForEach(0 ..< genre.count) {
                                     Text(self.genre [$0])
                                 }
                             }
                
                Picker (selection: $repStatus, label: Text("Repertoire Status"))
                            {
                                ForEach(0 ..< repertoireStage.count) {
                                    Text(self.repertoireStage [$0])
                                }
                            }
                
                
                
            }
              Section
                {
                    //common journal section
                                   HStack {
                                       
                                       Text("Performance Rating")
                                       Slider(value: $repProgress, in: minimumValue...maximumValue)
                                       Text("\(Int(repProgress))")
                                   
                                   }
                                   HStack {
                                   Stepper("Beats Per Minute", value: $BPM, in: 20...250)
                                   Text("\(BPM) BPM")
                                   }
                                   
                                   TextField("Repertoire Journal Entry", text: $repjournaltext)
                                   .textFieldStyle(RoundedBorderTextFieldStyle())
                                   Spacer()
                                   
                                       Button (action: {
                                           self.showingNextView.toggle()
                                       }) {
                                           Text("Structured Improvisation")
                                           .sheet(isPresented: $showingNextView){
                                               
                                               StructuredImprov()
                                           }
                                       }
                    
                    
                    
                }
                
            }.navigationBarTitle("Repertoire")
            
            }
    }
}

struct repertoire_Previews: PreviewProvider {
    static var previews: some View {
        Repertoire()
    }
}
