//
//  BandEtiquette.swift
//  iguitarjournal
//
//  Created by Tom Atkins on 1/2/20.
//  Copyright © 2020 High Strung Productions LLC. All rights reserved.
//

import Foundation
import CoreData

public class Etiquette: NSManagedObject, Identifiable {
    @NSManaged public var date: Date?
    @NSManaged public var etiquetteFocus: String?
    @NSManaged public var etiquetteProgress: NSNumber?
    @NSManaged public var etiquetteJournal: String?
    @NSManaged public var id: UUID?
}

extension Etiquette {
    
    static func etiquetteFetchRequest() -> NSFetchRequest<Etiquette> {
        let request: NSFetchRequest<Etiquette> = Etiquette.fetchRequest() as! NSFetchRequest<Etiquette>
        
        request.sortDescriptors = [NSSortDescriptor(key: "", ascending: true)]
        
        return request
    }
}
