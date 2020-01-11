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

 let menu = Bundle.main.decode([RoutineSection].self, from: "guitarjournal.json")
    

    var body: some View {
         NavigationView {
            
            List {
                ForEach(menu) { section in
                Section(header: Text(section.name))
                {
                ForEach(section.routines) { item in
                    ItemRow(item: item)
                    }
                }
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
