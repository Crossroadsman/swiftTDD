//
//  ViewController.swift
//  fizzBuzz
//
//  Created by Alex Koumparos on 11/05/16.
//  Copyright © 2016 Alex Koumparos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var game: Game?
    
    var gameScore: Int?
    
    func play(play: String) {
        guard let unwrappedGame = game else {
            print("warning: game is nil!")
            return
        }
        let newScore = unwrappedGame.play(play)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

