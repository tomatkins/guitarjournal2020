//
//  BandEtiquetteViewModel.swift
//  iguitarjournal
//
//  Created by Tom Atkins on 12/18/19.
//  Copyright © 2019 High Strung Productions LLC. All rights reserved.
//

import Foundation
import CoreData

class BandEtiquetteViewModel {
        
    var id: UUID
    var date: Date
    var etiquetteFocus: String
   var etiquetteProgress: Double
    var etiquetteJournal: String
    init(etiquetteFocus: String, etiquetteProgress: Double, etiquetteJournal: String ) {
        self.id = UUID()
        self.date = Date()
        self.etiquetteFocus = etiquetteFocus
        self.etiquetteProgress = etiquetteProgress
        self.etiquetteJournal = etiquetteJournal
    }
}

class DummyData {
    static func mockEtiquette() -> [BandEtiquetteViewModel] {
        return [
            BandEtiquetteViewModel(etiquetteFocus: "DummyData", etiquetteProgress: 50, etiquetteJournal: "DummyData"),
             BandEtiquetteViewModel(etiquetteFocus: "Even More Dummy", etiquetteProgress: 25, etiquetteJournal: "Cant believe the dummy"),
             BandEtiquetteViewModel(etiquetteFocus: "Yet more fake data", etiquetteProgress: 75, etiquetteJournal: "Eager to start real data")
        ]
    }
}
