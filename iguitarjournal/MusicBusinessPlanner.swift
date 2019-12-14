//
//  MusicBusinessPlanner.swift
//  iguitarjournal
//
//  Created by Tom Atkins on 12/14/19.
//  Copyright © 2019 High Strung Productions LLC. All rights reserved.
//

import SwiftUI

struct MusicBusinessPlanner: View {
    
    //CoreData Connector
    @Environment(\.managedObjectContext) var managedObjectContext
    
    
    var body: some View {
        Text("Music Business Planner View")
    }
}

struct MusicBusinessPlanner_Previews: PreviewProvider {
    static var previews: some View {
        MusicBusinessPlanner()
    }
}
