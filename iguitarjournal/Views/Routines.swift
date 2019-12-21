//
//  Routines.swift
//  iguitarjournal
//
//  Created by Tom Atkins on 12/20/19.
//  Copyright © 2019 High Strung Productions LLC. All rights reserved.
//

import SwiftUI
import UIKit

struct Routines: View {
    
    let menu = Bundle.main.decode([RoutineSection].self, from: "guitarjournal.json")
    
    
    var body: some View {
        NavigationView {
            List {
                ForEach(menu) { section in
                    Section(header: Text(section.name)) {
                        ForEach(section.routines) { item in
                            ItemRow(item: item)
                        }
            
                    }
                    
                }
                
            }
            .navigationBarTitle("All Routines")
            .listStyle(GroupedListStyle())
        }
        
    }

}
struct Routines_Previews: PreviewProvider {
    static var previews: some View {
        Routines()
    }
}
