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
   
    let etiquette = [
        
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
        "Perform at your very best, no excuses.",
        
    ]
    
    @State private var etiquetteFocus = 0
    
    // handle nutty issue with slider conversion from double to string.
    @State private var etiquetteProgress: Double = 0
    let minimumValue = 1.0
    let maximumValue = 100.0
    var sliderValueRounded: Int {
        Int(self.etiquetteProgress.rounded())
    }
    lazy var sliderConverted = String(sliderValueRounded)
    
    var onSave: (_ success: Bool) -> Void
    
    @State private var etiquetteJournal = ""
    
    @State private var showingAlert = false
    
    
    var body: some View {
        NavigationView {
            Form {
                
                Section (header: Text("Gather your Thoughts"))
                {
                    Picker (selection: $etiquetteFocus, label: Text("Etiquette Focus"))
                    {
                        ForEach(0 ..< etiquette.count) {
                            Text(self.etiquette [$0])
                        }
                    }
                    
                    HStack {
                        
                        Text("Performance Rating")
                        Slider(value: $etiquetteProgress, in: minimumValue...maximumValue)
                        Text("\(Int(etiquetteProgress))")
                        
                    }
                    
                    TextField("Etiquette Journal Entry", text: $etiquetteJournal)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                     HStack {
                                   Button("Save Entry") {
                                    self.saveEntry()
                                   }
                                   .alert(isPresented: self.$showingAlert){
                                    Alert(title: Text("Saved!"),
                                          message: Text("Band Etiquette Answer is Saved."), dismissButton:.default(Text("OK!")))
                                    
                        }
                        
                                   }
                                
                               }
                               .font(.headline)
                               .padding()
                               .foregroundColor(.white)
                               .background(Color.orange)
                               .cornerRadius(15)
                    
                    
                    
                }
                Section (header: Text("Previous Entries"))
                {
                    
                    Dashboard()
                    
                    
                    
                    
                }
                
                
            }.navigationBarTitle("Band Etiquette")
            
        }
    
    func saveEntry() {
        let vm = BandEtiquetteViewModel(etiquetteFocus: "", sliderConverted: "", etiquetteJournal: "")
        vm.etiquetteFocus = self.$etiquetteFocus.wrappedValue
        vm.etiquetteJournal = self .$etiquetteJournal.wrappedValue
        vm.sliderConverted = self.sliderConverted.wrappedValue
        vm.saveBandEti {
            self.showingAlert = true
            self.onSave(true)
            self.$etiquetteFocus.wrappedValue = ""
            self.sliderConverted.wrappedValue = ""
            self.$etiquetteJournal.wrappedValue = ""
        }
    }
}




//struct BandEtiquette_Previews: PreviewProvider {
//    static var previews: some View {
//        BandEti(onSave: (true) -> Void)
//    }
//}
