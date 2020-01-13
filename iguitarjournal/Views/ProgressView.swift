//
//  ProgressView.swift
//  iguitarjournal
//
//  Created by Tom Atkins on 12/13/19.
//  Copyright © 2019 High Strung Productions LLC. All rights reserved.
//

import SwiftUI
import FASwiftUI

struct ProgressView: View {
 



    var body: some View {
        NavigationView {
            VStack {
                
            
           
            FAText(iconName: "fa-award", size: 40)
                .foregroundColor(.green)
                .padding()
                
                Text("56")
                 .font(.headline)
            Text("Number of Hours Practiced")
                .font(.caption)
              
                
                
                
           
            .padding()
            HStack {
                VStack{
                FAText(iconName: "guitar", size: 20)
                .foregroundColor(.green)
                
                Text("Practice Sessions")
                .font(.caption)
                    .padding()
                    Text("56")
                    .font(.headline)
                }
                
                VStack{
                FAText(iconName: "clock", size: 20)
                .foregroundColor(.green)
                
                Text("Total Minutes Practiced")
                .font(.caption)
                    .padding()
                    Text("3360")
                    .font(.headline)
                }
                VStack{
                FAText(iconName: "calendar-alt", size: 20)
                .foregroundColor(.green)
                Text("Longest Session")
                .font(.caption)
                .padding()
                    Text("2.5 Hours")
                    .font(.headline)
                    
                    
                }
            } .padding()
                 Spacer()
                Divider()
                }
                ProgressDetail()
        .navigationBarTitle(Text("Progress"), displayMode: .inline)
    }
    
    }
}

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView()
    }
}
