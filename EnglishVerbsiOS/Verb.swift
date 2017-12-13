//
//  Verb.swift
//  EnglishVerbsiOS
//
//  Created by xengar on 2017-12-13.
//  Copyright © 2017 xengar. All rights reserved.
//

import Foundation

// MARK: - Verb
class Verb {

    // MARK: Properties
    var id : Int
    var infinitive : String
    var simplePast : String
    var pastParticiple : String
    var presentParticiple : String
    var definition : String
    var phoneticInfinitive : String
    var phoneticSimplePast : String
    var phoneticPastParticiple : String
    var sample1 : String
    var sample2 : String
    var sample3 : String
    var common : Int
    var regular : Int
    var color : Int
    var score : Int
    var source : Int
    var notes : String
    var translationES : String
    var translationFR : String
    var translationPT : String
    var translationGE : String
    var translationRU : String
    var translationSW : String
    var translationIT : String
    var translationIN : String
    var translationCH : String
    var translationJP : String
    var translationKO : String
    var translationDU : String
    var translationNO : String
    
    // MARK: Initializer
    init(dictionary: [String : AnyObject]) {
        id = dictionary["id"] as! Int
        infinitive = dictionary["in"] as! String
        simplePast = dictionary["sp"] as! String
        pastParticiple = dictionary["pp"] as! String
        presentParticiple = dictionary["prp"] as! String
        definition = dictionary["de"] as! String
        phoneticInfinitive = dictionary["phin"] as! String
        phoneticSimplePast = dictionary["phsp"] as! String
        phoneticPastParticiple = dictionary["phpp"] as! String
        sample1 = dictionary["s1"] as! String
        sample2 = dictionary["s2"] as! String
        sample3 = dictionary["s3"] as! String
        common = dictionary["co"] as! Int
        regular = dictionary["re"] as! Int
        color  = 0
        score = 0
        source = 0
        notes = dictionary["no"] as! String
        translationES = dictionary["tres"] as! String
        translationFR = dictionary["trfr"] as! String
        translationPT = dictionary["trpt"] as! String
        translationGE = dictionary["trge"] as! String
        translationRU = dictionary["trru"] as! String
        translationSW = dictionary["trsw"] as! String
        translationIT = dictionary["trit"] as! String
        translationIN = dictionary["trin"] as! String
        translationCH = dictionary["trch"] as! String
        translationJP = dictionary["trjp"] as! String
        translationKO = dictionary["trko"] as! String
        translationDU = dictionary["trdu"] as! String
        translationNO = dictionary["trno"] as! String
    }
    
}
