//
//  QuoteViewController.swift
//  Feelings
//
//  Created by Amit Kamra on 4/13/15.
//  Copyright (c) 2015 AkMindfulLabs. All rights reserved.
//

import UIKit

class QuoteDetailViewController: UIViewController {

    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var upliftButton: UIButton!
    
    var feeling: Feeling?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if feeling != nil {
            navigationItem.title = feeling!.title
            view.backgroundColor = feeling!.background
            upliftButton.tintColor = feeling!.background
            quoteLabel.text = feeling!.randomQuote()

        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func showAnotherQuote() {
        quoteLabel.text = feeling!.randomQuote()
    }
    

}
