//
//  ListTableViewController.swift
//  EnglishVerbsiOS
//
//  Created by xengar on 2017-12-13.
//  Copyright © 2017 xengar. All rights reserved.
//

import UIKit

class ListTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // MARK: Properties
    @IBOutlet weak var tableView: UITableView!
    
    var verbData : VerbData!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Initialize the verbs
        let verbPlistPaths = Bundle.main.paths(forResourcesOfType: "plist", inDirectory: nil)
        
        for plistPath in verbPlistPaths {
            if (plistPath as NSString).lastPathComponent == "verbs.plist" {
                if let verbsDictionary = NSDictionary(contentsOfFile: plistPath) as? [String : AnyObject] {
                    verbData = VerbData(dictionary: verbsDictionary)
                }
            }
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        self.tableView.reloadData()
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

    // MARK: Table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return verbData.verbsCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "Cell")!
        let verb = verbData.verbForIndex(index: (indexPath as NSIndexPath).row)
        cell.textLabel!.text = verb.infinitive
        cell.detailTextLabel!.text = verb.definition
        //let imageName = adventure.credits.imageName
        //cell.imageView!.image = UIImage(named: imageName!)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // Get the selected adventure
        let verb = verbData.verbForIndex(index: (indexPath as NSIndexPath).row)
        
        // Get a StoryNodeController from the Storyboard
        let verbDetailsController = self.storyboard!.instantiateViewController(withIdentifier: "VerbDetailsViewController")as! VerbDetailsViewController
        
        // Set the story node so that we will see the start of the story
        verbDetailsController.verb = verb
        
        // Push the new controller onto the stack
        self.navigationController!.pushViewController(verbDetailsController, animated: true)
    }
    
}
