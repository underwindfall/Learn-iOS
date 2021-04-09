//
//  Game.swift
//  Bullseye
//
//  Created by Qifan YANG on 08/04/2021.
//

import Foundation

struct Game {
    //target bullEye
    var target : Int = Int.random(in: 1...100)
    var score : Int = 0
    var round : Int = 1
    
    func points(sliderValue: Int) -> Int {
        return 100
    }
}
