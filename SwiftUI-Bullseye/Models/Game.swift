//
//  Game.swift
//  SwiftUI-Bullseye
//
//  Created by Ruaidhrí O'Neill on 19/08/2021.
//

import Foundation

struct Game {
    var target = Int.random(in: 1...100)
    var score = 0
    var round = 1
    
    func points(sliderValue: Int) -> Int {
        100 - abs(target - sliderValue)
    }
}
