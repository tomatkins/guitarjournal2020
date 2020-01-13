//
//  ProgressDetail.swift
//  iguitarjournal
//
//  Created by Tom Atkins on 1/12/20.
//  Copyright © 2020 High Strung Productions LLC. All rights reserved.
//

import SwiftUI

struct ProgressDetail: View {
    var body: some View {
        NavigationView {
            
            List {
                
                
                //NavigationLink(destination: )
                Text("Calendar/History")
                
                //NavigationLink(destination: )
                Text("List of All Sessions")
                
                }
            .navigationBarTitle(Text("Progress"), displayMode: .inline)
        }

    }

}
struct ProgressDetail_Previews: PreviewProvider {
    static var previews: some View {
        ProgressDetail()
    }
}
