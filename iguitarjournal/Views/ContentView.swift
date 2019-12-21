//
//  ContentView.swift
//  iguitarjournal
//
//  Created by Tom Atkins on 12/12/19.
//  Copyright © 2019 High Strung Productions LLC. All rights reserved.
//

import SwiftUI
import CoreData

struct ContentView: View {

     @Environment(\.managedObjectContext) var managedObjectContext

    
    @State private var newPracticeSession = ""
    
    @State var showWarmup = false
    @State var showRoutineList = false
    
    
    var body: some View {
         NavigationView {
                List {
                    Section(header: Text("Playgrounds")) {
                        
            
            
            Button(action: {
                               self.showRoutineList.toggle()
                           }) {
                           Text("Show All Routines")
                       }.sheet(isPresented: $showRoutineList) {
                       Routines()
                   }
                    
                                       Text("View all Routines")
                                   }
                                   
                                   Section (header: Text("Unguided")) {
                                   
                                    Text("Free Play/Unguided")
                                   
                                   }
                                   
                                   Section (header: Text("Instructor Led"))
                                   {
                                   Text("Foundations of Rock Guitar")
                                   Text("Musician's Institute")
                                   Text("Berklee School of Music")
                                   }
                                   
                                   Section (header: Text("App Settings")) {
                                   Text("About Guitar Journal")
                                   Text("Practice Summary")
                                   }
                               }.listStyle(GroupedListStyle())
                               .navigationBarTitle("iGuitarJournal")
                           }
                       }

        }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
