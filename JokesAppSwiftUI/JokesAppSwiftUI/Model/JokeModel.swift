//
//  JokeModel.swift
//  JokesAppSwiftUI
//
//  Created by mesut alver on 21.12.2022.
//

import Foundation


// MARK: - Welcome
struct Welcome: Identifiable, Codable {
    let id = UUID()
    let type: String
    let value: [Value]
}

// MARK: - Value
struct Value: Identifiable, Codable {
    let id: Int
    let joke: String
    let categories: [String]
}


