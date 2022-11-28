//
//  favoriteModel.swift
//  favoriteBook
//
//  Created by mesut alver on 28.11.2022.
//

import Foundation

struct FavoriteModel: Identifiable {
    var id =  UUID()
    var title : String
    var elements : [FavoriteElements]
    
    
}

struct FavoriteElements : Identifiable {
    var id = UUID()
    var name : String
    var imagename : String
    var description : String
}

// Movies
let matrix = FavoriteElements(name: "Matrix", imagename: "matrix", description: "Keanu reeves's Best of")
let starWars = FavoriteElements(name: "Star Wars", imagename: "StarWars", description: "Anakiiin :(")
let lotr = FavoriteElements(name: "Lord Of The Rings", imagename: "lotr", description: "Legolas! what do your elf eyes see?")


let favoriteMovies = FavoriteModel(title: "Favorite Movies", elements: [matrix, starWars, lotr])



// Anime

let naruto = FavoriteElements(name: "Naruto", imagename: "naruto", description: "Uzumaki Naruto!")
let bleach = FavoriteElements(name: "Bleach", imagename: "bleach", description: "Kurosaki İchigo Shinigami!")
let deathNote = FavoriteElements(name: "Death Note", imagename: "deathNote", description: "L")


let favoriteAnime = FavoriteModel(title: "Favorite Anime", elements: [naruto, bleach, deathNote])


let myFavorites = [favoriteMovies, favoriteAnime]
