//
//  BandEtiq.swift
//  iguitarjournal
//
//  Created by Tom Atkins on 12/16/19.
//  Copyright © 2019 High Strung Productions LLC. All rights reserved.
//

import Foundation
import CoreData

// Code Generation is turned off in xcdatamodeld file
public class BandEtiq: NSManagedObject, Identifiable {
    @NSManaged public var etiquetteFocus: String?
    @NSManaged public var etiquetteJournal: String?
    @NSManaged public var etiquetteProgress: NSDecimalNumber?
}

extension BandEtiq {
    // The @FetchRequest property wrapper in the xView will call this function
    
    static func allBandEtiquetteFetchRequest() -> NSFetchRequest<BandEtiq> {
        let request: NSFetchRequest<BandEtiq> = BandEtiq.fetchRequest() as!
        NSFetchRequest<BandEtiq>
        
    // The @FetchRequest property wrapper in the ContentView requires a sort descriptor
        request.sortDescriptors = [NSSortDescriptor(key: "etiquetteFocus", ascending: true)]
        
        return request
        
    }
}
