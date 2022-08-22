//
//  Game.swift
//  SwiftUIRaywenderlich
//
//  Created by Ruslan on 05.08.2022.
//

import Foundation

struct Game{
    var target: Int = Int.random(in: 1...100)
    var score: Int = 0
    var round: Int = 1
    
    func point(sliderValue: Int)-> Int{
        let difference: Int = abs(sliderValue - self.target)
        
    return (100 - difference)
    }
}
