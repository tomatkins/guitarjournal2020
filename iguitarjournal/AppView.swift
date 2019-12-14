//
//  AppView.swift
//  iguitarjournal
//
//  Created by Tom Atkins on 12/13/19.
//  Copyright © 2019 High Strung Productions LLC. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
       TabView {
                ContentView()
                    .tabItem {
                        
                        Image(systemName: "house.fill")
                        Text("Home")
                }
      
                ProgressView()
                    .tabItem {
                        
                        Image(systemName: "guitars")
                        Text("Progress")
            }
        }
    }
        
}
struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
