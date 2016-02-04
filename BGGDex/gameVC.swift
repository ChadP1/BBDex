//
//  gameVC.swift
//  BGGDex
//
//  Created by chad parr on 2/3/16.
//  Copyright © 2016 chad parr. All rights reserved.
//

import Foundation
import UIKit

class gameVC: UIViewController {
    
    @IBOutlet weak var descLbl: UILabel!
    @IBOutlet weak var gameTxtField: UITextField!
    
    var gameNum: Int!
    var gameNumString: String!

    override func viewDidLoad() {
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
    }


    
    
    func getGameInfo() {
        
        //let gameNumString = String(gameNum)
        let urlString = "https://bgg-json.azurewebsites.net/thing/" + gameNumString
        let session = NSURLSession.sharedSession()
        print(urlString)
        let url = NSURL(string: urlString)!
        
        session.dataTaskWithURL(url) { (data: NSData?, response: NSURLResponse?, error: NSError?) -> Void in
            
            if let responseData = data {
                
                do{
                    
                    let json = try NSJSONSerialization.JSONObjectWithData(responseData, options: NSJSONReadingOptions.AllowFragments)
                    if let dict = json as? Dictionary<String, AnyObject> {
                        
                        if let name = dict["name"] as? String, let rank = dict["rank"] as? Int, let gameId = dict["gameId"] as? Int, let yearPub = dict["yearPublished"] as? Int, let thumbNail = dict["thumbnail"] as? String, let descrt = dict["description"] as? String, let bbgRating = dict["bggRating"] as? Int, let minplayers = dict["minPlayers"] as? Int, let maxplayers = dict["maxPlayers"] as? Int{
                            let game = GameInfo(description: descrt, bbgRating: bbgRating, minplayers: minplayers, maxplayers: maxplayers, name: name, rank: rank, gameId: gameId, thumbNail: thumbNail, yearPub: yearPub)
                          
                            print(game.description)
                            self.descLbl.text = game.description 
                        }
                        
                    }
                } catch {
                    print("There has been a problem on the game screen")
                }
                
                
                
            }
            
            }.resume()
        
    }

    @IBAction func buttonPressed(sender: AnyObject) {
        
        gameNumString = gameTxtField.text
        getGameInfo()
    }
    
    
    @IBAction func returnToMain(sender: AnyObject) {
        
        dismissViewControllerAnimated(true, completion: nil)
        
    }

        
        
    }





