//
//  ViewController.swift
//  Quotes
//
//  Created by mac on 12.02.2019.
//  Copyright © 2019 Oleg_Psiarovsky. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var quoteTextLabel: UILabel!
    @IBOutlet weak var authorImageView: UIImageView!
    @IBOutlet weak var authorNameLabel: UILabel!
    
    let quotes = ["Your time is limited. So don't waste it living someone else's life.",
                  "No matter how small you start, start somethings that matters",
                  "Veni, vidi, vici."
    ]
    
    let authorNames = ["Steve Jobs", "Brendon Burchard", "Julius Caesar"]
    
    let imageNames = ["stevejobs", "brendonburchard", "juliuscaesar"]
    
    @IBAction func inspireMeDidTap(_ sender: Any) {
        
        let randomNumber = Int(arc4random()) % 3
        
        let newQuote = quotes[randomNumber]
        let newAuthor = authorNames[randomNumber]
        let authorImageName = imageNames[randomNumber]
        
        quoteTextLabel.text = newQuote
        authorNameLabel.text = newAuthor
        authorImageView.image = UIImage(named: authorImageName)
        
    }
}

