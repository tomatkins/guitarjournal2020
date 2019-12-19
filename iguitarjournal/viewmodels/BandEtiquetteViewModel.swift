//
//  BandEtiquetteViewModel.swift
//  iguitarjournal
//
//  Created by Tom Atkins on 12/18/19.
//  Copyright © 2019 High Strung Productions LLC. All rights reserved.
//

import Foundation


class BandEtiquetteViewModel {
    var id: UUID
    var etiquetteFocus: String
    var etiquetteProgress: Double
    var etiquetteJournal: String
    //wait on image
    init(etiquetteFocus: String, etiquetteProgress: Double, etiquetteJournal: String ) {
        self.id = UUID()
        self.etiquetteFocus = etiquetteFocus
        self.etiquetteProgress = etiquetteProgress
        self.etiquetteJournal = etiquetteJournal
    }
}

class DummyData {
    static func mockEtiquette() -> [BandEtiquetteViewModel] {
        return [
            BandEtiquetteViewModel(etiquetteFocus: "DummyData", etiquetteProgress: 50.0, etiquetteJournal: "DummyData"),
             BandEtiquetteViewModel(etiquetteFocus: "Even More Dummy", etiquetteProgress: 25.0, etiquetteJournal: "Cant believe the dummy"),
        
        ]
    }
}
