//
//  ViewController.swift
//  BGGDex
//
//  Created by chad parr on 2/2/16.
//  Copyright © 2016 chad parr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
    let urlString = "https://bgg-json.azurewebsites.net/hot"
    let session = NSURLSession.sharedSession()
    let url = NSURL(string: urlString)!
        
        session.dataTaskWithURL(url) { (data: NSData?, response: NSURLResponse?, error: NSError?) -> Void in
    
            if let responseData = data {
                
                do{
                    
                    let json = try NSJSONSerialization.JSONObjectWithData(responseData, options: NSJSONReadingOptions.AllowFragments)
                    if let dict = json as? Dictionary<String, AnyObject> {

                        if let name = dict["name"] as? String, let rank = dict["rank"] as? Int, let gameId = dict["gameId"] as? Int, let yearPub = dict[""] as? Int, let thumbNail = dict["thumbnail"] as? String {
                            
                            let game = Game(name: name, rank: rank, gameId: gameId, thumbNail: thumbNail, yearPub: yearPub)
                            
                            print(game.name)
                            print(game.rank)
                            print(game.gameId)
                            print(game.yearPub)
                            print(game.thumbNail)
                            
                        }
                    }
                    } catch {
                        print("There has been a problem")
                    }

                
                
            }

        }.resume()

    }


}

