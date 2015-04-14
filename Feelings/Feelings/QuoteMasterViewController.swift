//
//  ViewController.swift
//  Feelings
//
//  Created by Amit Kamra on 4/13/15.
//  Copyright (c) 2015 AkMindfulLabs. All rights reserved.
//

import UIKit

class QuoteMasterViewController: UIViewController {

    var quotesArray: [UILabel] = []
    
    @IBOutlet weak var feelingTextView0: UILabel!
    @IBOutlet weak var feelingTextView1: UILabel!
    @IBOutlet weak var feelingTextView2: UILabel!
    @IBOutlet weak var feelingTextView3: UILabel!
    @IBOutlet weak var feelingTextView4: UILabel!
    @IBOutlet weak var feelingTextView5: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        quotesArray += [feelingTextView0, feelingTextView1, feelingTextView2, feelingTextView3, feelingTextView4, feelingTextView5]
        
        for feelingTextView in quotesArray {
            let feeling = Feeling(index: feelingTextView.text!)
            feelingTextView.backgroundColor = feeling.background
        }
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showQuoteDetailSegue" {
            
            let feelingTextLabel = sender!.view as UILabel
            
            let quoteDetailController = segue.destinationViewController as QuoteDetailViewController
            quoteDetailController.feeling = Feeling(index: feelingTextLabel.text!)
            
        }
    }

    
    @IBAction func showQuoteDetail(sender: AnyObject) {
        performSegueWithIdentifier("showQuoteDetailSegue", sender: sender)
    }
    
    
    
}

