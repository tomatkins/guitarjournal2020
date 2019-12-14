//
//  ToneQuest.swift
//  iguitarjournal
//
//  Created by Tom Atkins on 12/14/19.
//  Copyright © 2019 High Strung Productions LLC. All rights reserved.
//

import SwiftUI

struct ToneQuest: View {
    
    //CoreData Connector
    @Environment(\.managedObjectContext) var managedObjectContext
    
    
    var body: some View {
        Text("ToneQuest View")
    }
}

struct ToneQuest_Previews: PreviewProvider {
    static var previews: some View {
        ToneQuest()
    }
}
