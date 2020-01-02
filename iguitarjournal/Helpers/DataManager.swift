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
    // get all Data
    // [BandEtiquette] here is the Core Data Entity
    
    func getBandEtiquette() -> [Etiquette] {
        var bandEtis = [Etiquette]()
        let bandEtiRequest: NSFetchRequest<Etiquette> = Etiquette.fetchRequest() as! NSFetchRequest<Etiquette>
        
        do {
            bandEtis = try self.context.fetch(bandEtiRequest)
            } catch let error as NSError {
                   print(error)
               }
               return bandEtis
        
    }
    
    // save the Entry
    func saveBandEtiEntry(etiquetteFocus: String, etiquetteProgress: NSNumber, etiquetteJournal: String) {
        let bandEti = Etiquette(context: self.context)
        //system creates UUID & Date
        bandEti.id = UUID()
        bandEti.date = Date()
        bandEti.etiquetteFocus = etiquetteFocus
        bandEti.etiquetteProgress = etiquetteProgress
        bandEti.etiquetteJournal = etiquetteJournal
        
        do {
            try self.context.save()
            } catch let error as NSError {
            print(error)
            }
        
    }
    
    
    // delete an entry
    func deleteBandEtiqEntry(id: UUID) {
        let fetchRequest: NSFetchRequest<Etiquette> = Etiquette.fetchRequest() as! NSFetchRequest<Etiquette>
        fetchRequest.predicate = NSPredicate.init(format: "id=%@", id.uuidString)
        do {
            let fetchedEntries = try context.fetch(fetchRequest)
            for pl in fetchedEntries {
                context.delete(pl)
            }
            try context.save()
        } catch let error as NSError {
            print(error)
        }
    }
    
    
    
}
