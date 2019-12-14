//
//  Songwriting.swift
//  iguitarjournal
//
//  Created by Tom Atkins on 12/13/19.
//  Copyright © 2019 High Strung Productions LLC. All rights reserved.
//

import SwiftUI

struct Songwriting: View {
    
     //CoreData Connector
     @Environment(\.managedObjectContext) var managedObjectContext
    
    
    
    var body: some View {
        Text("Songwriting View")
    }
}

struct Songwriting_Previews: PreviewProvider {
    static var previews: some View {
        Songwriting()
    }
}
