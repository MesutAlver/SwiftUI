//
//  detailsView.swift
//  favoriteBook
//
//  Created by mesut alver on 28.11.2022.
//

import SwiftUI

struct detailsView: View {
    
    var choosenFavoriteElement : FavoriteElements
    
    var body: some View {
        VStack{
            Image(choosenFavoriteElement.imagename)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text(choosenFavoriteElement.name)
                .font(.largeTitle)
                .padding()
            Text(choosenFavoriteElement.description)
        
        }
        
    }
}

struct detailsView_Previews: PreviewProvider {
    static var previews: some View {
        detailsView(choosenFavoriteElement: matrix)
    }
}
