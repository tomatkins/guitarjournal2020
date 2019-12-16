//
//  CoreDataManager.swift
//  iguitarjournal
//
//  Created by Tom Atkins on 12/16/19.
//  Copyright © 2019 High Strung Productions LLC. All rights reserved.
//

import Foundation
import CoreData


class CoreDataManager {
    
    static let shared = CoreDataManager(moc: NSManagedObjectContext.current)
    
    //Singleton
    var moc: NSManagedObjectContext
    
    init(moc: NSManagedObjectContext) {
        self.moc = moc
    }
    
}
