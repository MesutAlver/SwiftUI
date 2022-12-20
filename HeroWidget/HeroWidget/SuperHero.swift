//
//  SuperHero.swift
//  HeroWidget
//
//  Created by mesut alver on 9.12.2022.
//

import Foundation

struct Superhero : Identifiable, Codable {
    
    
    
    let image : String
    let name : String
    let realName : String
    
    var id : String { image }
    
    
    
}

let spiderman = Superhero(image: "spiderman", name: "Spider-Man", realName: "Peter Parker")
let hulk = Superhero(image: "hulk", name: "Hulk", realName: "Bruce Banner")
let wolvarine = Superhero(image: "wolvarine", name: "Wolvarine", realName: "Huge Jackman")
let ironman = Superhero(image: "ironman", name: "İron Man", realName: "Tony Stark")

