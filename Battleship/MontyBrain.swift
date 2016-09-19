//
//  MontyEngine.swift
//  Monty
//
//  Created by Jason Gresh on 9/13/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import Foundation


class MontyBrain {
    let numCards: Int
    
    var shipPosition = [String: State]()

    init(numCards:Int){
        self.numCards = numCards
        setupGrideButton(row: 10, by: 10)
        
    }
    
    fileprivate enum State{
        case hit
        case miss
    }
    
    private  var cards = [State]()
    
    func setupGrideButton(row: Int, by column:Int) {
        for rowItem in 0..<row {
            for colItem in 0..<column {
                createButtonOn(rowItem, col: colItem)
            }
        }
        setBattleShipPosition()
    }
    
    func setBattleShipPosition() {
        // randomly set the ship position
        let positions = ["0,0", "0,1", "0,2"]
        for position in positions {
            shipPosition[position] = .Hit
        }
    }
    
    
    
    func checkCard(_ cardIn: Int) -> Bool{
        assert(cardIn < cards.count)  //helps with debugging
        return cards[cardIn] == .hit
    }
}
