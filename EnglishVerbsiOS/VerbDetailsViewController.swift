//
//  VerbDetailsViewController.swift
//  EnglishVerbsiOS
//
//  Created by xengar on 2017-12-13.
//  Copyright © 2017 xengar. All rights reserved.
//

import UIKit

class VerbDetailsViewController: UIViewController {

    // MARK: Properties
    var verb : Verb!
    @IBOutlet weak var infinitive: UILabel!
    @IBOutlet weak var simplePast: UILabel!
    @IBOutlet weak var pastParticiple: UILabel!
    @IBOutlet weak var translation: UILabel!
    @IBOutlet weak var definition: UILabel!
    @IBOutlet weak var sample1: UILabel!
    @IBOutlet weak var sample2: UILabel!
    @IBOutlet weak var sample3: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        infinitive.text = verb.infinitive
        simplePast.text = verb.simplePast
        pastParticiple.text = verb.pastParticiple
        translation.text = verb.translationFR
        definition.text = verb.definition
        sample1.text = verb.sample1
        sample2.text = verb.sample2
        sample3.text = verb.sample3
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
