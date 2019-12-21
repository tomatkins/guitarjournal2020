//
//  AllRoutines.swift
//  iguitarjournal
//
//  Created by Tom Atkins on 12/17/19.
//  Copyright © 2019 High Strung Productions LLC. All rights reserved.
//

import SwiftUI

struct RoutineSection: Codable {
    var id: UUID
    var name: String
    var routines: [AllRoutines]
}

struct AllRoutines: Codable, Equatable {
    var id: UUID
    var routinename: String
    var playground: [String]
    var description: String
    var icon: String


    #if DEBUG
    
    static let example = AllRoutines(id: UUID(), routinename: "Warmups", playground: ["B", "I", "P"], description: "Essential injury prevention routine", icon: "hand-paper")
    
    #endif
}
