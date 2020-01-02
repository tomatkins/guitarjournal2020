//
//  AddEntryBandEtiViewModel.swift
//  iguitarjournal
//
//  Created by Tom Atkins on 12/23/19.
//  Copyright © 2019 High Strung Productions LLC. All rights reserved.
//

import Foundation


class AddEntryBandEtiViewModel {
    var etiquetteFocus: String = ""
    var etiquetteProgress: Double = 0
    var etiquetteJournal: String = ""
    
    func saveEntry(saved: @escaping ()  -> Void) {
        DataManager.shared.saveBandEtiEntry(etiquetteFocus: self.etiquetteFocus, etiquetteProgress: NSNumber(value: self.etiquetteProgress), etiquetteJournal: self.etiquetteJournal)
        saved()
    }
    
}
