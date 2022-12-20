//
//  CircleImageView.swift
//  HeroWidget
//
//  Created by mesut alver on 9.12.2022.
//

import SwiftUI

struct CircleImageView: View {
    
    
    var image : Image
    var body: some View {
        image.resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.red,lineWidth: 7))
            .shadow(radius: 50)
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView(image: Image("spiderman"))
    }
}
