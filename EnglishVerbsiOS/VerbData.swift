//
//  VerbData.swift
//  EnglishVerbsiOS
//
//  Created by xengar on 2017-12-13.
//  Copyright © 2017 xengar. All rights reserved.
//

import Foundation

// MARK: - Verb
class VerbData {

    // MARK: Properties
    private var verbs: [Verb]
    
    // MARK: Initializer
    init(dictionary: [String : AnyObject]) {
        // Get the dictionary
        let verbNodesDictionary = dictionary["verbs"] as! [String : AnyObject]
        // Create the array
        verbs = [Verb]()
        
        // Add a Story Node for each item in storyNodesDictionary
        for (key, dictionary): (String, AnyObject) in verbNodesDictionary {
            verbs.append(contentsOf:Verb(dictionary: dictionary as! [String : AnyObject]))
        }
    }
    
    // The number of verbs
    func verbsCount() -> Int {
        return verbs.count
    }
    
    // The verb node that corresponds to the same index.
    func storyNodeForIndex(index: Int) -> Verb {
        let verb = verbs[index]
        return verb
    }
}
