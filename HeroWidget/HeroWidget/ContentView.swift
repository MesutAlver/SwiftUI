//
//  ContentView.swift
//  HeroWidget
//
//  Created by mesut alver on 9.12.2022.
//

import SwiftUI
import WidgetKit

let superHeroArray = [spiderman,wolvarine,ironman,hulk]

struct ContentView: View {
    
    @AppStorage("hero",store: UserDefaults(suiteName: "group.mesutalver.HeroWidget"))
    
    var heroData : Data = Data()
    
    var body: some View {
        VStack {
            ForEach(superHeroArray) { array in
                HeroView(hero: array).onTapGesture {
                    saveToDefaults(hero: array)
                }
            }
        }
    }
    func saveToDefaults(hero : Superhero) {
       //print(hero.name)
        
        // jsonencoder kullanarak veriye çevirme
        // userdefaulta veriyi kaydetme
        if let heroData = try? JSONEncoder().encode(hero) {
            self.heroData = heroData
            print(hero.name)
            WidgetCenter.shared.reloadTimelines(ofKind: "WidgetHero")
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
