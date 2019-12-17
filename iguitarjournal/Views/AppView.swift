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
        }.tag(0)
      
                UserPreferences()
                    .tabItem {
                 
                        Image(systemName: "gear")
                        Text("Settings")
            }.tag(1)
        
        
                ProgressView()
                    .tabItem {
                        
                        Image(systemName: "guitars")
                        Text("Progress")
            }.tag(2)
                
        }
    }
        
}
struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
