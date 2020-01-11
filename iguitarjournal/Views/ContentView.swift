//
//  ContentView.swift
//  iguitarjournal
//
//  Created by Tom Atkins on 12/12/19.
//  Copyright © 2019 High Strung Productions LLC. All rights reserved.
//

import SwiftUI
import CoreData
import FASwiftUI

struct ContentView: View {
    
    var body: some View {
        ScrollView {
            
            NavigationView {
                
                VStack {
                    
                    Group {
                        NavigationLink (destination: Warmups())
                        {
                            HStack {
                                FAText(iconName:"hand-paper", size: 40)
                                    .foregroundColor(.blue)
                                    .padding()
                                
                                VStack (alignment: .leading){
                                    Text("Warmups")
                                        .font(.headline)
                                    Text("Essential injury prevention routine")
                                        .font(.subheadline)
                                    
                                }
                                
                            }
                            
                        } // end Warmups
                    
                        Divider()
                        
                        
                        NavigationLink(destination: ScalesChords())
                        {
                            HStack {
                                FAText(iconName:"music", size: 40)
                                    .foregroundColor(.blue)
                                    .padding()
                                
                                VStack (alignment: .leading){
                                    Text("Scales and Chords")
                                        .font(.headline)
                                    Text("Organizing Melodic and Harmonic Routine")
                                        .font(.subheadline)
                                }
                            }
                        }// end Scales and chords
                        
                        Divider()
                        
                        NavigationLink(destination: EarTraining())
                        {
                            HStack {
                                FAText(iconName:"head-side-headphones", size: 40)
                                    .foregroundColor(.blue)
                                    .padding()
                                
                                VStack (alignment: .leading){
                                    Text("Ear Training")
                                        .font(.headline)
                                    Text("Building the Ear Muscles")
                                        .font(.subheadline)
                                }
                            }
                            
                        } // end Ear Training
                        
                        Divider()
                        
                        NavigationLink(destination: MusicTheory())
                        {
                            HStack {
                                FAText(iconName:"icons", size: 40)
                                    .foregroundColor(.blue)
                                    .padding()
                                
                                VStack (alignment: .leading){
                                    Text("Music Theory")
                                        .font(.headline)
                                    Text("Essential Music Theory Concepts")
                                        .font(.subheadline)
                                }
                            }
                            
                        } // end Music Theory
                        
                        
                        Divider()
                        
                        NavigationLink(destination: SightReading())
                        {
                            HStack {
                                FAText(iconName:"eye", size: 40)
                                    .foregroundColor(.blue)
                                    .padding()
                                
                                VStack (alignment: .leading){
                                    Text("Sight Reading")
                                        .font(.headline)
                                    Text("Improve your Music Reading Skills")
                                        .font(.subheadline)
                                }
                            }
                            
                        } // end Sight Reading
                        
                        Divider()
                        
                        NavigationLink(destination: Transcription())
                        {
                            HStack {
                                FAText(iconName:"edit", size: 40)
                                    .foregroundColor(.blue)
                                    .padding()
                                
                                VStack (alignment: .leading){
                                    Text("Transcription")
                                        .font(.headline)
                                    Text("Improve your Music Dictation Skills")
                                        .font(.subheadline)
                                }
                            }
                            
                        } // end Sight Reading
                        
                  
                        
                        
                    } //VStack
                        .padding()
                        .navigationBarTitle("iGuitarJournal")
                }
            }
        }
    }//end some view
}// end view
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
