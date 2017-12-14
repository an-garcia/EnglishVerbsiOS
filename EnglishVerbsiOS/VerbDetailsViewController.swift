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
    var conjugation : Conjugation!
    
    @IBOutlet weak var infinitive : UILabel!
    @IBOutlet weak var simplePast : UILabel!
    @IBOutlet weak var pastParticiple : UILabel!
    @IBOutlet weak var translation : UILabel!
    @IBOutlet weak var definition : UILabel!
    @IBOutlet weak var sample1 : UILabel!
    @IBOutlet weak var sample2 : UILabel!
    @IBOutlet weak var sample3 : UILabel!
    
    @IBOutlet weak var simplePresentI : UILabel!
    @IBOutlet weak var simplePresentYou : UILabel!
    @IBOutlet weak var simplePresentHe : UILabel!
    @IBOutlet weak var simplePresentWe : UILabel!
    @IBOutlet weak var simplePresentYoup : UILabel!
    @IBOutlet weak var simplePresentThey : UILabel!
    @IBOutlet weak var presentContinuousI : UILabel!
    @IBOutlet weak var presentContinuousYou : UILabel!
    @IBOutlet weak var presentContinuousHe : UILabel!
    @IBOutlet weak var presentContinuousWe : UILabel!
    @IBOutlet weak var presentContinuousYoup : UILabel!
    @IBOutlet weak var presentContinuousThey : UILabel!
    @IBOutlet weak var presentPerfectI : UILabel!
    @IBOutlet weak var presentPerfectYou : UILabel!
    @IBOutlet weak var presentPerfectHe : UILabel!
    @IBOutlet weak var presentPerfectWe : UILabel!
    @IBOutlet weak var presentPerfectYoup : UILabel!
    @IBOutlet weak var presentPerfectThey : UILabel!
    @IBOutlet weak var presentPerfectContinuousI : UILabel!
    @IBOutlet weak var presentPerfectContinuousYou : UILabel!
    @IBOutlet weak var presentPerfectContinuousHe : UILabel!
    @IBOutlet weak var presentPerfectContinuousWe : UILabel!
    @IBOutlet weak var presentPerfectContinuousYoup : UILabel!
    @IBOutlet weak var presentPerfectContinuousThey : UILabel!
    
    @IBOutlet weak var simplePastI : UILabel!
    @IBOutlet weak var simplePastYou : UILabel!
    @IBOutlet weak var simplePastHe : UILabel!
    @IBOutlet weak var simplePastWe : UILabel!
    @IBOutlet weak var simplePastYoup : UILabel!
    @IBOutlet weak var simplePastThey : UILabel!
    @IBOutlet weak var pastContinuousI : UILabel!
    @IBOutlet weak var pastContinuousYou : UILabel!
    @IBOutlet weak var pastContinuousHe : UILabel!
    @IBOutlet weak var pastContinuousWe : UILabel!
    @IBOutlet weak var pastContinuousYoup : UILabel!
    @IBOutlet weak var pastContinuousThey : UILabel!
    @IBOutlet weak var pastPerfectI : UILabel!
    @IBOutlet weak var pastPerfectYou : UILabel!
    @IBOutlet weak var pastPerfectHe : UILabel!
    @IBOutlet weak var pastPerfectWe : UILabel!
    @IBOutlet weak var pastPerfectYoup : UILabel!
    @IBOutlet weak var pastPerfectThey : UILabel!
    @IBOutlet weak var pastPerfectContinuousI : UILabel!
    @IBOutlet weak var pastPerfectContinuousYou : UILabel!
    @IBOutlet weak var pastPerfectContinuousHe : UILabel!
    @IBOutlet weak var pastPerfectContinuousWe : UILabel!
    @IBOutlet weak var pastPerfectContinuousYoup : UILabel!
    @IBOutlet weak var pastPerfectContinuousThey : UILabel!
    
    @IBOutlet weak var simpleFutureI : UILabel!
    @IBOutlet weak var simpleFutureYou : UILabel!
    @IBOutlet weak var simpleFutureHe : UILabel!
    @IBOutlet weak var simpleFutureWe : UILabel!
    @IBOutlet weak var simpleFutureYoup : UILabel!
    @IBOutlet weak var simpleFutureThey : UILabel!
    @IBOutlet weak var futureContinuousI : UILabel!
    @IBOutlet weak var futureContinuousYou : UILabel!
    @IBOutlet weak var futureContinuousHe : UILabel!
    @IBOutlet weak var futureContinuousWe : UILabel!
    @IBOutlet weak var futureContinuousYoup : UILabel!
    @IBOutlet weak var futureContinuousThey : UILabel!
    @IBOutlet weak var futurePerfectI : UILabel!
    @IBOutlet weak var futurePerfectYou : UILabel!
    @IBOutlet weak var futurePerfectHe : UILabel!
    @IBOutlet weak var futurePerfectWe : UILabel!
    @IBOutlet weak var futurePerfectYoup : UILabel!
    @IBOutlet weak var futurePerfectThey : UILabel!
    @IBOutlet weak var futurePerfectContinuousI : UILabel!
    @IBOutlet weak var futurePerfectContinuousYou : UILabel!
    @IBOutlet weak var futurePerfectContinuousHe : UILabel!
    @IBOutlet weak var futurePerfectContinuousWe : UILabel!
    @IBOutlet weak var futurePerfectContinuousYoup : UILabel!
    @IBOutlet weak var futurePerfectContinuousThey : UILabel!
 
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        fillVerbDetails(verb)
        conjugation = processConjugation(verb)
        fillConjugationDetails(conjugation)
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
    
    
    // MARK: - Verb Details
    
    private func fillVerbDetails(_ verb : Verb) {
        infinitive.text = verb.infinitive
        simplePast.text = verb.simplePast
        pastParticiple.text = verb.pastParticiple
        translation.text = verb.translationFR
        definition.text = verb.definition
        sample1.text = verb.sample1
        sample2.text = verb.sample2
        sample3.text = verb.sample3
    }
    
    // MARK: - Verb Conjugations
    
    private func processConjugation(_ verb : Verb) -> Conjugation {
        var c : Conjugation = Conjugation()
        
        conjugateSimplePresent(c, verb.infinitive)
        conjugatePresentContinuous(c, verb.presentParticiple)
        conjugatePresentPerfect(c, verb.pastParticiple)
        conjugatePresentPerfectContinuous(c, verb.presentParticiple)
        conjugateSimplePast(c, verb.simplePast)
        conjugatePastContinuous(c, verb.presentParticiple)
        conjugatePastPerfect(c, verb.pastParticiple)
        conjugatePastPerfectContinuous(c, verb.presentParticiple)
        conjugateSimpleFuture(c, verb.infinitive)
        conjugateFutureContinuous(c, verb.presentParticiple)
        conjugateFuturePerfect(c, verb.pastParticiple)
        conjugateFuturePerfectContinuous(c, verb.presentParticiple)
        
        return c
    }
    
    private func conjugateSimplePresent(_ c : Conjugation, _ infinitive : String) {
        if (infinitive.count < 2 ) { return }
        
        if (infinitive.elementsEqual("be")) {
            c.simplePresentI = "I am"
            c.simplePresentYou = "you are"
            c.simplePresentHe = "he/she/it is"
            c.simplePresentWe = "we are"
            c.simplePresentYoup = "you are"
            c.simplePresentThey = "they are"
            
        } else {
            c.simplePresentI = "I " + infinitive;
            c.simplePresentYou = "you " + infinitive;
            
            // Rules: http://www.ef.com/english-resources/english-grammar/simple-present-tense/
            // - In the third person singular the verb always ends in -s
            // - Verbs ending in -y : the third person changes the -y to -ies:
            //   fly --> flies, cry --> cries
            //   Exception: if there is a vowel before the -y:
            //   play --> plays, pray --> prays
            // Rules: http://www.grammar.cl/Present/Simple.htm
            // - Add -es to verbs ending in: -ss, -x, -sh, -ch, -o, -z:
            //   he passes, she catches, he fixes, it pushes, goes, washes, kisses, buzzes
            if (infinitive.elementsEqual("have")) {
                // exception
                c.simplePresentHe = "he/she/it has"
                
            } else if (infinitive.hasSuffix("y") && !(infinitive.hasSuffix("ay") || infinitive.hasSuffix("ey")
                || infinitive.hasSuffix("iy") || infinitive.hasSuffix("oy")
                || infinitive.hasSuffix("uy"))) {
                c.simplePresentHe = "he/she/it "
                    + infinitive.prefix(infinitive.count - 1) + "ies"
            } else if (infinitive.hasSuffix("ss") || infinitive.hasSuffix("x")
                || infinitive.hasSuffix("sh") || infinitive.hasSuffix("ch")
                || infinitive.hasSuffix("o") || infinitive.hasSuffix("z")) {
                c.simplePresentHe = "he/she/it " + infinitive + "es"
            } else {
                c.simplePresentHe = "he/she/it " + infinitive + "s"
            }
            
            c.simplePresentWe = "we " + infinitive
            c.simplePresentYoup = "you " + infinitive
            c.simplePresentThey = "they " + infinitive
        }
    }
    
    private func conjugatePresentContinuous(_ c : Conjugation, _ presentParticiple : String) {
        // TODO
    }
    
    private func conjugatePresentPerfect(_ c : Conjugation, _ pastParticiple : String) {
        // TODO
    }
    
    private func conjugatePresentPerfectContinuous(_ c : Conjugation, _ presentParticiple : String) {
        // TODO
    }
    
    private func conjugateSimplePast(_ c : Conjugation, _ simplePast : String) {
        // TODO
    }
    
    private func conjugatePastContinuous(_ c : Conjugation, _ presentParticiple : String) {
        // TODO
    }
    
    private func conjugatePastPerfect(_ c : Conjugation, _ pastParticiple : String) {
        // TODO
    }
    
    private func conjugatePastPerfectContinuous(_ c : Conjugation, _ presentParticiple : String) {
        // TODO
    }
    
    private func conjugateSimpleFuture(_ c : Conjugation, _ infinitive : String) {
        // TODO
    }
    
    private func conjugateFutureContinuous(_ c : Conjugation, _ presentParticiple : String) {
        // TODO
    }
    
    private func conjugateFuturePerfect(_ c : Conjugation, _ pastParticiple : String) {
        // TODO
    }
    
    private func conjugateFuturePerfectContinuous(_ c : Conjugation, _ presentParticiple : String) {
        // TODO
    }
    
    private func fillConjugationDetails(_ c : Conjugation) {
        simplePresentI.text = c.simplePresentI
        simplePresentYou.text = c.simplePresentYou
        simplePresentHe.text = c.simplePresentHe
        simplePresentWe.text = c.simplePresentWe
        simplePresentYoup.text = c.simplePresentYoup
        simplePresentThey.text = c.simplePresentThey
        presentContinuousI.text = c.presentContinuousI
        presentContinuousYou.text = c.presentContinuousYou
        presentContinuousHe.text = c.presentContinuousHe
        presentContinuousWe.text = c.presentContinuousWe
        presentContinuousYoup.text = c.presentContinuousYoup
        presentContinuousThey.text = c.presentContinuousThey
        presentPerfectI.text = c.presentPerfectI
        presentPerfectYou.text = c.presentPerfectYou
        presentPerfectHe.text = c.presentPerfectHe
        presentPerfectWe.text = c.presentPerfectWe
        presentPerfectYoup.text = c.presentPerfectYoup
        presentPerfectThey.text = c.presentPerfectThey
        presentPerfectContinuousI.text = c.presentPerfectContinuousI
        presentPerfectContinuousYou.text = c.presentPerfectContinuousYou
        presentPerfectContinuousHe.text = c.presentPerfectContinuousHe
        presentPerfectContinuousWe.text = c.presentPerfectContinuousWe
        presentPerfectContinuousYoup.text = c.presentPerfectContinuousYoup
        presentPerfectContinuousThey.text = c.presentPerfectContinuousThey
        
        simplePastI.text = c.simplePastI
        simplePastYou.text = c.simplePastYou
        simplePastHe.text = c.simplePastHe
        simplePastWe.text = c.simplePastWe
        simplePastYoup.text = c.simplePastYoup
        simplePastThey.text = c.simplePastThey
        pastContinuousI.text = c.pastContinuousI
        pastContinuousYou.text = c.pastContinuousYou
        pastContinuousHe.text = c.pastContinuousHe
        pastContinuousWe.text = c.pastContinuousWe
        pastContinuousYoup.text = c.pastContinuousYoup
        pastContinuousThey.text = c.pastContinuousThey
        pastPerfectI.text = c.pastPerfectI
        pastPerfectYou.text = c.pastPerfectYou
        pastPerfectHe.text = c.pastPerfectHe
        pastPerfectWe.text = c.pastPerfectWe
        pastPerfectYoup.text = c.pastPerfectYoup
        pastPerfectThey.text = c.pastPerfectThey
        pastPerfectContinuousI.text = c.pastPerfectContinuousI
        pastPerfectContinuousYou.text = c.pastPerfectContinuousYou
        pastPerfectContinuousHe.text = c.pastPerfectContinuousHe
        pastPerfectContinuousWe.text = c.pastPerfectContinuousWe
        pastPerfectContinuousYoup.text = c.pastPerfectContinuousYoup
        pastPerfectContinuousThey.text = c.pastPerfectContinuousThey
        
        simpleFutureI.text = c.simpleFutureI
        simpleFutureYou.text = c.simpleFutureYou
        simpleFutureHe.text = c.simpleFutureHe
        simpleFutureWe.text = c.simpleFutureWe
        simpleFutureYoup.text = c.simpleFutureYoup
        simpleFutureThey.text = c.simpleFutureThey
        futureContinuousI.text = c.futureContinuousI
        futureContinuousYou.text = c.futureContinuousYou
        futureContinuousHe.text = c.futureContinuousHe
        futureContinuousWe.text = c.futureContinuousWe
        futureContinuousYoup.text = c.futureContinuousYoup
        futureContinuousThey.text = c.futureContinuousThey
        futurePerfectI.text = c.futurePerfectI
        futurePerfectYou.text = c.futurePerfectYou
        futurePerfectHe.text = c.futurePerfectHe
        futurePerfectWe.text = c.futurePerfectWe
        futurePerfectYoup.text = c.futurePerfectYoup
        futurePerfectThey.text = c.futurePerfectThey
        futurePerfectContinuousI.text = c.futurePerfectContinuousI
        futurePerfectContinuousYou.text = c.futurePerfectContinuousYou
        futurePerfectContinuousHe.text = c.futurePerfectContinuousHe
        futurePerfectContinuousWe.text = c.futurePerfectContinuousWe
        futurePerfectContinuousYoup.text = c.futurePerfectContinuousYoup
        futurePerfectContinuousThey.text = c.futurePerfectContinuousThey
    }

}
