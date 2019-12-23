//
//  Dashboard.swift
//  iguitarjournal
//
//  Created by Tom Atkins on 12/18/19.
//  Copyright © 2019 High Strung Productions LLC. All rights reserved.
//

import SwiftUI

struct Dashboard: View {
    var body: some View {
        List {
            ForEach(DummyData.mockEtiquette(), id: \.id) {
                item in
                Text("\(item.etiquetteFocus)")
            }
        }
    }
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
    }
}
