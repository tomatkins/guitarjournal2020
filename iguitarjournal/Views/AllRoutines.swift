//
//  AllRoutines.swift
//  iguitarjournal
//
//  Created by Tom Atkins on 12/17/19.
//  Copyright © 2019 High Strung Productions LLC. All rights reserved.
//

import SwiftUI

struct RoutineSection: Codable, Identifiable {
    var id: UUID
    var name: String
    var routines: [AllRoutines]
}

struct AllRoutines: Codable, Equatable, Identifiable {
    var id: UUID
    var routineName: String
    var view: String
    var description: String
    var icon: String


    #if DEBUG
    
    static let example = AllRoutines(id: UUID(), routineName: "Warmups", view: "Warmups()", description: "Essential injury prevention routine", icon: "hand-paper")
    
    #endif
}
