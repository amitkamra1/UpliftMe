//
//  Feeling.swift
//  Feelings
//
//  Created by Amit Kamra on 4/13/15.
//  Copyright (c) 2015 AkMindfulLabs. All rights reserved.
//

import Foundation
import UIKit

struct Feeling {
    
    var title: String?
    var quotes: [String] = []
    var background: UIColor = UIColor.clearColor()
    
    init(index: String) {
        let quotesLibrary = QuotesLibrary().library
        let feelingDictionary = quotesLibrary[index]!
        
        title = feelingDictionary["title"] as String!
        quotes += feelingDictionary["quotes"] as [String]
        
        let colorsDictionary = feelingDictionary["background"] as [String: CGFloat]
        background = rgbColorFromDictionary(colorsDictionary)
        
    }
    
    func rgbColorFromDictionary(colorDictionary: [String: CGFloat]) -> UIColor {
        
        let red = colorDictionary["red"]!
        let green = colorDictionary["green"]!
        let blue = colorDictionary["blue"]!
        let alpha = colorDictionary["alpha"]!
        
        return UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: alpha)
    }
    
    func randomQuote() -> String {
        var unsignedArrayCount = UInt32(quotes.count)
        var unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        var randomNumber = Int(unsignedRandomNumber)
        
        return quotes[randomNumber]
    }

    
}