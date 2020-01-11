//
//  BandEti.swift
//  iguitarjournal
//
//  Created by Tom Atkins on 12/23/19.
//  Copyright © 2019 High Strung Productions LLC. All rights reserved.
//

import SwiftUI
import CoreData




struct BandEti: View {
   
    var eti: [String] = [
        
        "Be Honest with yourself",
        "Help Organize anything, from set list to PA Cables",
        "Help set up and tear down for shows",
        "Help develop band merchandise",
        "Contribute to productive working Atmosphere",
        "Be helpful and constructive to bandmates and supporters",
        "Be open and honest in all communications",
        "Understand your responsibilities",
        "Encourage Healthy lifestyle choices",
        "Know when to Party, and still be responsible for your own actions",
        "Dispell stereotypes by rising above them",
        "Accept Constructive Critism",
        "Accept Flattery, and say Thank you",
        "Demonstrate Gratitude for the opportunity to perform for an audience of two or two thousand",
        "Take time to reflect",
        "Speak and act in a way to bring peace to others through your music.",
        "Be Mindful of your thoughts, be calm",
        "Demonstrate patience toward yourself and others",
        "Think before reacting in emotional conditions",
        "Perform at your very best, no excuses."
        
    ]
    
    @State private var etiquetteFocus = 0
    @State private var etiquetteProgress: Double = 0
    @State private var etiquetteJournal = ""
    @State private var showingAlert = false
    var minimumValue = 1.0
    var maximumValue = 100.0
    
    var body: some View {
        NavigationView {
            Form {
                    Section (header: Text("Gather your Thoughts"))
                    {
                        
//            Picker (selection: $etiquetteFocus, label: Text("Etiquette Focus"))
//                    {
//                        ForEach(0 ..< eti.count)
//                            {
//                            Text(self.eti[$0])
//                                }
//
//                                    }
                        
                        
                    Text("Performance Rating")
                        
                      HStack {
                           
                            Slider (value: $etiquetteProgress, in: minimumValue...maximumValue)
                        //Text("\(etiquetteProgress)")
                                                   
                            }
                  
                    
                        TextField("Etiquette Journal Entry", text: self.$etiquetteJournal)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                     
                       
                        
                    
                    Dashboard()
               
            }.navigationBarTitle("Etiquette")
          
        }
            
}

}

struct BandEti_Previews: PreviewProvider {
    static var previews: some View {
        BandEti()
    }
}
}
