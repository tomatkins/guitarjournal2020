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
    var sliderConverted: String = ""
    var etiquetteJournal: String = ""
    
    func saveBandEti(saved: @escaping ()  -> Void) {
        DataManager.shared.saveBandEtiEntry(etiquetteFocus: self.etiquetteFocus, sliderConverted: self.sliderConverted, etiquetteJournal: self.etiquetteJournal)
    }
}
