//
//  HeroView.swift
//  HeroWidget
//
//  Created by mesut alver on 9.12.2022.
//

import SwiftUI

struct HeroView: View {
    
    let hero : Superhero
    
    
    var body: some View {
        HStack {
            CircleImageView(image: Image(hero.image)).frame(width: 100,height: 100, alignment: .center).padding()
            
            Spacer()
            VStack {
                Text(hero.name).font(.largeTitle).fontWeight(.bold).foregroundColor(.red)
                
                Text(hero.realName).fontWeight(.bold)
            }.padding()
            
            Spacer()
        }.frame(width: UIScreen.main.bounds.width,alignment: .center)
        
    }
}

struct HeroView_Previews: PreviewProvider {
    static var previews: some View {
        HeroView(hero: spiderman)
    }
}
