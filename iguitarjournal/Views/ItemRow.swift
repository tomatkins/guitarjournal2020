//
//  ItemRow.swift
//  iguitarjournal
//
//  Created by Tom Atkins on 12/21/19.
//  Copyright © 2019 High Strung Productions LLC. All rights reserved.
//

import SwiftUI
import FASwiftUI





struct ItemRow: View {
    
    var item: AllRoutines
    
    
    
    
    
    var body: some View {
        
        NavigationLink(destination:
        Text(item.view)) {
        HStack {
            FAText(iconName:(item.icon), size: 40)
                .foregroundColor(.green)
                .padding()
            VStack (alignment: .leading){
            Text(item.routineName)
                .font(.headline)
            Text(item.description)
                .font(.subheadline)
                }
            }
        }
    }

}
    
struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: AllRoutines.example)
    }
}
