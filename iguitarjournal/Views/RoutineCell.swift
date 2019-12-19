//
//  RoutineCell.swift
//  iguitarjournal
//
//  Created by Tom Atkins on 12/18/19.
//  Copyright © 2019 High Strung Productions LLC. All rights reserved.
//

import SwiftUI
import FASwiftUI

struct RoutineCell: View {
    
    var icons = [
    
    FAText(iconName: "hand-paper", size: 40, style: .solid),
    FAText(iconName: "music", size: 40, style: .solid),
    FAText(iconName: "head-side-headphones", size: 40, style: .solid),
    FAText(iconName: "icons", size: 40, style: .solid),
    FAText(iconName: "hand-paper", size: 40, style: .solid),
    FAText(iconName: "music", size: 40, style: .solid),
    FAText(iconName: "head-side-headphones", size: 40, style: .solid),
    FAText(iconName: "icons", size: 40, style: .solid),
    FAText(iconName: "eye", size: 40, style: .solid),
    FAText(iconName: "edit", size: 40, style: .solid),
    FAText(iconName: "list-music", size: 40, style: .solid),
    FAText(iconName: "waveform-path", size: 40, style: .solid),
    FAText(iconName: "rabbit-fast", size: 40, style: .solid),
    FAText(iconName: "gramophone", size: 40, style: .solid),
    FAText(iconName: "amp-Guitar", size: 40, style: .solid),
    FAText(iconName: "guitars", size: 40, style: .solid),
    FAText(iconName: "hands-usd", size: 40, style: .solid),
    FAText(iconName: "tv-music", size: 40, style: .solid),
    FAText(iconName: "search-dollar", size: 40, style: .solid),
    FAText(iconName: "user-music", size: 40, style: .solid),
    
    ]
    
    var body: some View {
        
        VStack (alignment: .leading) {
            
            HStack (alignment: .top) {
                icons[0]
                .foregroundColor(.green)
                Spacer()
                VStack (alignment: .leading) {
                
                Text("Warmups")
                .font(.title)
    
            Text("Features Syncronization and Permutations")
                .font(.subheadline)
                }
            }
            } .padding()
    }
}

struct RoutineCell_Previews: PreviewProvider {
    static var previews: some View {
        RoutineCell()
    }
}
