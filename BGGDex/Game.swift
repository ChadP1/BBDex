//
//  Game.swift
//  BGGDex
//
//  Created by chad parr on 2/2/16.
//  Copyright © 2016 chad parr. All rights reserved.
//

import Foundation

class Game {
    
    private var _name: String!
    private var _rank: Int!
    private var _gameId: Int!
    private var _thumbNail: String!
    private var _yearPub: Int!
    
    var name: String {
        return _name
    }
    
    var rank: Int {
        return _rank
    }
    
    var gameId: Int {
        return _gameId
    }
    
    var thumbNail: String {
        return _thumbNail
    }
    
    var yearPub: Int {
        return _yearPub
    }
    
    init(name: String, rank: Int, gameId: Int, thumbNail: String, yearPub: Int) {
        _name = name
        _rank = rank
        _gameId = gameId
        _thumbNail = thumbNail
        _yearPub = yearPub
        
        
    }
    
}