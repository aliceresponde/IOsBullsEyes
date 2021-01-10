//
//  Game.swift
//  Bullseye
//
//  Created by Alicia Beltran on 10/01/21.
//

import Foundation

struct Game {
    var target: Int = Int.random(in: 1...100)
    var score: Int = 0
    var round : Int = 1
}
