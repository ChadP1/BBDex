//
//  GameInfo.swift
//  BGGDex
//
//  Created by chad parr on 2/3/16.
//  Copyright © 2016 chad parr. All rights reserved.
//

import Foundation

class GameInfo: Game {
    
    
    private  var _description: String!
    private var _isExpansion: Bool!
    private var _bbgRating: Int!
    private var _minplayers: Int!
    private var _maxplayers: Int!
    
    
    var description: String {
        return _description
    }
    
    var bbgRating: Int {
        return _bbgRating
    }
    
    var minplayers: Int {
        return _minplayers
    }
    
    var maxplayers: Int {
        return _maxplayers
    }
    
    var isExpansion: Bool {
        return _isExpansion
    }
    
    convenience init(description: String, bbgRating: Int, minplayers: Int, maxplayers: Int, isExpansion: Bool, name: String, rank: Int, gameId: Int, thumbNail: String, yearPub: Int) {
    
    self.init(nameGame: name, rankGame: rank, gameIdGame: gameId, thumbNailGame: thumbNail, yearPubGame = yearPub)
    
        _description = description
        _isExpansion = isExpansion
        _bbgRating = bbgRating
        _minplayers = minplayers
        _maxplayers = maxplayers
        
        
    }

}