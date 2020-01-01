//
//  BandEtiquetteReport.swift
//  iguitarjournal
//
//  Created by Tom Atkins on 12/21/19.
//  Copyright © 2019 High Strung Productions LLC. All rights reserved.
//

import SwiftUI
import FASwiftUI

struct BandEtiquetteReport: View {
  
    var bandEtiVM: BandEtiquetteViewModel
    
    
    var body: some View {
    
        NavigationLink(destination: Text(bandEtiVM.etiquetteFocus)) {
            
            HStack {
                Spacer()
                FAText(iconName: "user-music", size: 40)
                    .foregroundColor(.blue)
                    .padding()
                    
            
                VStack (alignment: .leading){
                Text(bandEtiVM.etiquetteFocus)
                    .font(.body)
                    .fontWeight(.bold)
                   
                
                Text(bandEtiVM.etiquetteJournal)
                .font(.subheadline)
                   
                
            }
                HStack  {
                    Spacer()
                   //Text("33")
                    Text(String ("\(bandEtiVM.etiquetteProgress)"))
                       
                        .fontWeight(.heavy)
                    .padding()

                    }
                
                }

            
            
        }
        
            
        

    }
        
}

struct BandEtiquetteReport_Previews: PreviewProvider {
    static var previews: some View {
        BandEtiquetteReport(bandEtiVM: BandEtiquetteViewModel( etiquetteFocus: "Be Nice", etiquetteProgress: 33, etiquetteJournal: "Trying to be Nice"))
    }
}

