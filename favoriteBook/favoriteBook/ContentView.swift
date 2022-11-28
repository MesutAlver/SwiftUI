//
//  ContentView.swift
//  favoriteBook
//
//  Created by mesut alver on 28.11.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{
            
            
            List {
                
                ForEach(myFavorites) { favorite in
                    Section(header: Text(favorite.title)) {
                        ForEach(favorite.elements) { element in
                            NavigationLink(destination: detailsView(choosenFavoriteElement: element)) {
                                Text(element.name)
                            }
                            
                        }
                    }
                    
                }
                
            }.navigationTitle(Text("Favorite Book"))
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
