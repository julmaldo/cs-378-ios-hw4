//
//  ShowCanidatesTableViewController.swift
//  MaldonadoJulio-hw4
//
//  Created by Julio Maldonado on 9/29/15.
//  Copyright © 2015 Julio Maldonado. All rights reserved.
//

import UIKit

class ShowCanidatesTableViewController: UITableViewController {
    var canidateList = [Canidate]()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Show Canidates"
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return canidateList.count
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let backItem = UIBarButtonItem()
        backItem.title = "Back"
        navigationItem.backBarButtonItem = backItem // This will show in the next view controller being pushed
        //which tableview row selected
        let indexPath:NSIndexPath? = self.tableView!.indexPathForSelectedRow
        //destination view controller
        let vc = segue.destinationViewController as! CanidateDetailsViewController
        //vars for which array will be sent
        var sentCanidate : Canidate
        
        //sent array decided by index of card info array
        sentCanidate = canidateList[indexPath!.row]
        //name of array vars in collection view controller
        vc.Canidat = sentCanidate
       

    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("canidatesCell", forIndexPath: indexPath)
        let can:Canidate = canidateList[indexPath.row]
        cell.textLabel?.text = "\(can.FirstName) \(can.LastName)"
        cell.detailTextLabel?.text = can.PoliticalParty

        return cell
    }
}
