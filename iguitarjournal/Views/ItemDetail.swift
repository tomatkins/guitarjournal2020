//
//  ItemDetail.swift
//  iguitarjournal
//
//  Created by Tom Atkins on 1/11/20.
//  Copyright © 2020 High Strung Productions LLC. All rights reserved.
//

import SwiftUI

struct ItemDetail: View {
    

    
    
    var item: AllRoutines
    
    
    
    var body: some View {
        
        NavigationView {
            VStack  {
                 Warmups()
           
                }
               
                    
               .navigationBarTitle(Text(item.routineName), displayMode: .inline)
            }
          
            }
         
        }
    
    



    
struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ItemDetail(item: AllRoutines.example)
        }
    }
}
