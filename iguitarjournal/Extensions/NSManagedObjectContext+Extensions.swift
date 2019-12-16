//
//  NSManagedObjectContext+Extensions.swift
//  iguitarjournal
//
//  Created by Tom Atkins on 12/16/19.
//  Copyright © 2019 High Strung Productions LLC. All rights reserved.
//

import Foundation
import UIKit
import CoreData

extension NSManagedObjectContext {
    
    static var current: NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
    }
    
    
}
