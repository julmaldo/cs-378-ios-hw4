//
//  Canidate.swift
//  MaldonadoJulio-hw4
//
//  Created by Julio Maldonado on 9/29/15.
//  Copyright © 2015 Julio Maldonado. All rights reserved.
//

class Canidate {
    
    //variables
    var FirstName:String
    var LastName:String
    var State:String
    var PoliticalParty: String
    

    
    //Init function
    init (first:String, last:String, state:String, politicalParty:String)
    {
        self.FirstName = first
        self.LastName = last
        self.State = state
        self.PoliticalParty = politicalParty
    }

    //class function that creates and returns an instance of automobile class
    class func createCanidate(first: String, last: String, state: String, politicalPary: String) -> Canidate
    {
        let tmpCanidate = Canidate(first: first, last: last, state: state, politicalParty: politicalPary)
        return tmpCanidate
    }
   
}
