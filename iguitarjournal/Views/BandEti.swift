//
//  BandEti.swift
//  iguitarjournal
//
//  Created by Tom Atkins on 12/23/19.
//  Copyright © 2019 High Strung Productions LLC. All rights reserved.
//

import SwiftUI
import CoreData


@objc(Etiquette)
public class Etiquette: NSManagedObject {
    
}
extension Etiquette: Identifiable {
    public var id: String? {
        return etiquetteFocus
    }
}



struct BandEti: View {
   
    @Environment(\.managedObjectContext) var managedObjectContext
    
    @FetchRequest (entity: Etiquette.entity(), sortDescriptors: ([NSSortDescriptor(keyPath: \Etiquette.id, ascending: true)])
   ) private var etiquettes: FetchedResults<Etiquette>
    
    @Binding var selectedEti: String?
    
    
    
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
    
    @State private var etiquetteFocus: String?
    @State private var etiquetteProgress: Double = 0
    @State private var etiquetteJournal = ""
    @State private var showingAlert = false
    
    var onSave: (_ success: Bool) -> Void
    
    //temporary in-memory storage for new etiquette entries
    @State private var newEtiquetteFocus = ""
    @State private var newEtiquetteProgress = 0.0
    @State private var newEtiquetteJournal = ""
    
    var body: some View {
        NavigationView {
            Form {
                    Section (header: Text("Gather your Thoughts"))
                    {
                
                     
                        
                        Picker(selection: $etiquetteFocus, label: Text("Etiquette Focus")) {
                            ForEach(0 ..< self.eti.count) {
                                Text(self.eti[$0])
                                }

                            }
                        
                        
                    Text("Performance Rating")
                        
                        Slider(value: $etiquetteProgress, in:  1...100, step: 1.0)
                    
                        Text("value is \(Double(etiquetteProgress))")
                        
                  
                    
                        TextField("Etiquette Journal Entry", text: self.$etiquetteJournal)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                     
                        Button(action: ({
                                   
                            let etiq = Etiquette(context: self.managedObjectContext)
                            etiq.etiquetteFocus = self.newEtiquetteFocus
                            etiq.etiquetteProgress = self.newEtiquetteProgress
                            etiq.etiquetteJournal = self.newEtiquetteJournal
                        
                            do {
                                try.self.managedObjectContext.save()
                            }catch {
                                print(error)
                            }
                            
                            //reset temporary in-memory storage
                            self.newEtiquetteFocus = ""
                            self.newEtiquetteProgress = 0
                            self.newEtiquetteJournal = ""
                        }))
                           
                        
                    
                    Dashboard()
               
            }.navigationBarTitle("Etiquette")
          
        }
            
}
    
//    func saveEntry() {
//    let vm = AddEntryBandEtiViewModel()
//        vm.etiquetteFocus = self.$etiquetteFocus.wrappedValue!
//    vm.etiquetteJournal = self.$etiquetteJournal.wrappedValue
//    vm.etiquetteProgress = self.$etiquetteProgress.wrappedValue
//    vm.saveEntry {
//        self.showingAlert = true
//        self.onSave(true)
//        self.$etiquetteFocus.wrappedValue = ""
//        self.$etiquetteProgress.wrappedValue = 0
//        self.$etiquetteJournal.wrappedValue = ""
//        }
    }
}



//struct BandEtiquette_Previews: PreviewProvider {
//    static var previews: some View {
//        BandEti(onSave: (true) -> Void)
//    }
//}
