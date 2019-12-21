//
//  Routines.swift
//  iguitarjournal
//
//  Created by Tom Atkins on 12/20/19.
//  Copyright © 2019 High Strung Productions LLC. All rights reserved.
//

import SwiftUI

struct Routines: View {
    
    let routine = Bundle.main.decode([RoutineSection].self, from: "guitarjournal.json")
    
    
    var body: some View {
        NavigationView {
        List {
             Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
             Text("Hello, World!")
             Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
        .navigationBarTitle("All Routines")
        }

    }

}
struct Routines_Previews: PreviewProvider {
    static var previews: some View {
        Routines()
    }
}
