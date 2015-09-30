//
//  CanidateDetailsViewController.swift
//  MaldonadoJulio-hw4
//
//  Created by Julio Maldonado on 9/30/15.
//  Copyright © 2015 Julio Maldonado. All rights reserved.
//

import UIKit

class CanidateDetailsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        first.text = Canidat.FirstName
        last.text = Canidat.LastName
        state.text = Canidat.State
        politicalParrty.text = Canidat.PoliticalParty
        votes.text = "\(votesCount)"
    }

    
    @IBOutlet weak var first: UILabel!
    @IBOutlet weak var last: UILabel!
    @IBOutlet weak var state: UILabel!
    @IBOutlet weak var politicalParrty: UILabel!
    @IBOutlet weak var votes: UILabel!
    var Canidat:Canidate = Canidate(first: "fill", last: "fill", state: "fill", politicalParty: "fill")
    var votesCount = 0
    
    
    
    
    
    
}
