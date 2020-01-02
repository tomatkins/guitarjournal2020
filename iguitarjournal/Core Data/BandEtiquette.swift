//
//  BandEtiquette.swift
//  iguitarjournal
//
//  Created by Tom Atkins on 1/2/20.
//  Copyright © 2020 High Strung Productions LLC. All rights reserved.
//

import Foundation
import CoreData

public class: BandEtiquette: NSManagedObject, Identifiable {
    @NSManaged public var date: Date?
    @NSManaged public var etiquetteFocus: String?
    @NSManaged public var etiquetteProgress: Double?
    @NSManaged public var etiquetteJournal: String?
    @NSManaged public var id: UUID?
}

extension BandEtiquette {
    
    static func bandEtiquetteFetchRequest() -> NSFetchRequest<BandEtiquette> {
        let request: NSFetchRequest<BandEtiquette> = BandEtiquette.fetchRequest() as! NSFetchRequest<BandEtiquette>
        
        request.sortDescriptors = [NSSortDescriptor(key: date, ascending: true)]
        
        return request
    }
}
