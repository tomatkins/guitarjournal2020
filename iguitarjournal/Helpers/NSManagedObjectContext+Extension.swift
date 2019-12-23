//
//  NSManagedObjectContext+Extension.swift
//  iguitarjournal
//
//  Created by Tom Atkins on 12/23/19.
//  Copyright © 2019 High Strung Productions LLC. All rights reserved.
//

import Foundation
import UIKit
import CoreData

extension NSManagedObjectContext {
    
    static var current: NSManagedObjectContext {
        return(UIApplication.shared.delegate as!
            AppDelegate).persistentContainer.viewContext
    }
    
    
}
