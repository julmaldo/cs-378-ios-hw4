//
//  ViewController.swift
//  MaldonadoJulio-hw4
//
//  Created by Julio Maldonado on 9/29/15.
//  Copyright © 2015 Julio Maldonado. All rights reserved.
//

import UIKit

class ViewController: UIViewController, AddCanidateViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Canidate Manager"
        canidateList = [Canidate(first: "bob", last: "ross", state: "texas", politicalParty: "Democrat"), Canidate(first: "mary", last: "right", state: "utah" , politicalParty: "Republican")]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var canidateList = [Canidate]()
    
    func addToCanidateList(can:Canidate){
        canidateList.append(can)
    }
    func myVCDidFinish(controller: AddCanidateViewController, Can: Canidate) {
        addToCanidateList(Can)
        controller.navigationController?.popViewControllerAnimated(true)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let backItem = UIBarButtonItem()
        backItem.title = "Back"
        navigationItem.backBarButtonItem = backItem // This will show in the next view controller being pushed
        if segue.identifier == "AddCanidateSegue"{
            let vc = segue.destinationViewController as! AddCanidateViewController
            vc.delegate = self
        }
        if segue.identifier == "ShowCanidateSegue"{
            let vc = segue.destinationViewController as! ShowCanidatesTableViewController
            vc.canidateList = canidateList
            
        }
    }

}

