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
    private  var _description: String!
    private var _isExpansion: Bool!
    private var _bbgRating: Int!
    private var _minplayers: Int!
    private var _maxplayers: Int!
    
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





/*init(name: String, rank: Int, gameId: Int, thumbNail: String, yearPub: Int, description: String, bbgRating: Int, minplayers: Int, maxplayers: Int, isExpansion: Bool) {
    _name = name
    _rank = rank
    _gameId = gameId
    _thumbNail = thumbNail
    _yearPub = yearPub
    _description = description
    _isExpansion = isExpansion
    _bbgRating = bbgRating
    _minplayers = minplayers
    _maxplayers = maxplayers
    

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



}*/

























