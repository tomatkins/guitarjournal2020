//
//  GoalFocus.swift
//  iguitarjournal
//
//  Created by Tom Atkins on 12/14/19.
//  Copyright © 2019 High Strung Productions LLC. All rights reserved.
//

import SwiftUI

struct GoalFocus: View {
    
    
    var musicalGoalFocus = [
      
      "Complete all igj warmups",
      "Complete all igj chords and Scales exercises",
      "Learn and build more advanced Chords",
      "Learn to sightread Music",
      "Complete Ear Interval Chart",
      "Successfully perform ii - V - I in all Keys",
      "Understand and apply Improvisational Concepts",
      "Be able to understand and apply Music Theory",
      "Record my first Song",
      "Record my first Album",
      "Perform in front of a crowd",
      "Make money making Music",
      
        ]
      
    
      var musicianGoalFocus =
      [
          
          "Marketing - Plan for the Year",
          "Online and Social Media Strategy",
          "Website Redesign",
          "Write down PR needs",
          "Booking - Plans for touring or local gigs",
          "Music Conferences-Guitar Camps",
          "Songwriting- Apply Successful Habits",
          "Albums - New Record for the year",
          "Sales - Goals",
          "Money - How much would you like to earn?",
          "Film and TV Placement - Focus on this!",
          "Building your Fan Base",
          "Email list",
          "Gig Attendance",
          "Team- Add Manager, Booking Agent or Publicist?",
          "Instrument Endorsement",
          "Help - Help of family and friends",
          "Personal Health - To make your musical performances better",
          "Mental Health - Positive Frame of Mind",
    "Branding - Solid Pitch and Unique Selling Point",
      ]
    
    @State private var goalone = ""
     @State private var goaltwo = ""
     @State private var goalthree = ""
     @State private var goalfour = ""
     @State private var goalfive = ""
    @State private var musicalGoals = 0
    @State private var musicianGoals = 0
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
                
                Section (header: Text("Strive for 5 Achievements Each Day!"))
                {
                
                   Picker (selection: $musicalGoals, label: Text("Musical Goals"))
                                      {
                                          ForEach(0 ..< musicalGoalFocus.count) {
                                          Text(self.musicalGoalFocus[$0])
                                              }
                                          }
                                      
                    
                    Picker (selection: $musicianGoals, label: Text("Musician Goals"))
                                                         {
                                                             ForEach(0 ..< musicianGoalFocus.count) {
                                                             Text(self.musicianGoalFocus[$0])
                                                                 }
                                                             }
                    
                
                    
                
            }
                Section (header: Text("Write out your 5 Goals"))
                {
                                   
                TextField("Goal One", text: $goalone)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                          
             TextField("Goal Two", text: $goaltwo)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                                    
            TextField("Goal Three", text: $goalthree)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                    
            TextField("Goal Four", text: $goalfour)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                    
            TextField("Goal Five", text: $goalfive)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            Spacer()
                    
                    Button (action: {
                            self.showingNextView.toggle()
                        }) {
                            Text("Band Etiquette")
                        .sheet(isPresented: $showingNextView){
                            BandEtiquette()
                    }
                }
                    
                    
                    
                }

            }
        .navigationBarTitle("Goal Focus")
        }
    }
}

struct GoalFocus_Previews: PreviewProvider {
    static var previews: some View {
        GoalFocus()
    }
}
