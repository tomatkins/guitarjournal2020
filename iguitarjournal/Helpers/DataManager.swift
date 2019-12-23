//
//  DataManager.swift
//  iguitarjournal
//
//  Created by Tom Atkins on 12/23/19.
//  Copyright © 2019 High Strung Productions LLC. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class DataManager {
    
    static let shared = DataManager(context:NSManagedObjectContext.current)
    var context: NSManagedObjectContext
    private init (context: NSManagedObjectContext) {
        self.context = context
    }
    // get all Entities Data
    
    func getBandEtiquette() -> [BandEtiquette] {
        var bandEtis = [BandEtiquette]()
        let bandEtiRequest: NSFetchRequest<BandEtiquette> = BandEtiquette.fetchRequest()
        
        do {
                   bandEtis = try self.context.fetch(bandEtiRequest)
               } catch let error as NSError {
                   print(error)
               }
               return bandEtis
        
    }
    
    
    
    
}
