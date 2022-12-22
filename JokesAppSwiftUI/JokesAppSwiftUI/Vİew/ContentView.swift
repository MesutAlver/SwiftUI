//
//  ContentView.swift
//  JokesAppSwiftUI
//
//  Created by mesut alver on 21.12.2022.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var jokesVM = JokesViewModel()
    
    var body: some View {
        
        NavigationView {
            
            List(jokesVM.jokes) { element in
                Text(element.joke)
            }
            .toolbar {
                Button {
                    addJoke()
                } label: {
                    Text("Get New Joke")
                }
                
            }
            .navigationTitle("Jokes APP")
        }
    }
    
    func addJoke() {
        jokesVM.getJokes()
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
