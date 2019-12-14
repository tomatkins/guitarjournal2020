//
//  PublicPerformanceEvaluation.swift
//  iguitarjournal
//
//  Created by Tom Atkins on 12/14/19.
//  Copyright © 2019 High Strung Productions LLC. All rights reserved.
//

import SwiftUI

struct PublicPerformanceEvaluation: View {
    
    //CoreData Connector
    @Environment(\.managedObjectContext) var managedObjectContext
    
    
    var body: some View {
        Text("Public Performance Evaluation View")
    }
}

struct PublicPerformanceEvaluation_Previews: PreviewProvider {
    static var previews: some View {
        PublicPerformanceEvaluation()
    }
}
