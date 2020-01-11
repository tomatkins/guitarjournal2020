//
//  ProgressView.swift
//  iguitarjournal
//
//  Created by Tom Atkins on 12/13/19.
//  Copyright © 2019 High Strung Productions LLC. All rights reserved.
//

import SwiftUI

struct ProgressView: View {
 



    var body: some View {
        NavigationView {
            List {
               
                VStack {
                
                    Text("View Underway")
        
                    }
            
        }
        .navigationBarTitle(Text("Progress"))
    }
    
    }
}

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView()
    }
}
