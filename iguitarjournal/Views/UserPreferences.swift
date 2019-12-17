//
//  UserPreferences.swift
//  iguitarjournal
//
//  Created by Tom Atkins on 12/14/19.
//  Copyright © 2019 High Strung Productions LLC. All rights reserved.
//

import SwiftUI

struct UserPreferences: View {
    //@State private var draftProfile = Profile.default
    
    @State private var showingAdvancedOptions = false
    @State private var enableLogging = false
    
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Toggle(isOn: $showingAdvancedOptions.animation()) {
                        Text("Show Advanced Options")
                    }
                    
                    if showingAdvancedOptions {
                        Toggle(isOn: $enableLogging) {
                            Text("Enable Logging")
                        }
                    }
                }
            }
                Text("User Preferences View")
            
        }.navigationBarTitle(Text("Settings"))
    
    }
    
}

struct UserPreferences_Previews: PreviewProvider {
    static var previews: some View {
        UserPreferences()
    }
}
