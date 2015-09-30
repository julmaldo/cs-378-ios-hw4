//
//  Canidate.swift
//  MaldonadoJulio-hw4
//
//  Created by Julio Maldonado on 9/29/15.
//  Copyright © 2015 Julio Maldonado. All rights reserved.
//

class Canidate {
    
    //variables
    private var FirstName:String
    private var LastName:String
    private var State:String
    private var PoliticalParty: String

    //getters
    func getFirstName() -> String{
        return self.FirstName
    }
    func getLastName() -> String{
        return self.LastName
    }
    func getState() -> String{
        return self.State
    }
    func getPoliticalParty() -> String{
        return self.PoliticalParty
    }
    //setters
    func setFirstName (value:String){
        FirstName = value
    }
    func setLastName (value:String){
        LastName = value
    }
    func setState (value:String){
        State = value
    }
    func setPoliticalParty (value:String){
        PoliticalParty = value
    }

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
    //returns decription of automobile function
    func description ()-> String
    {
        let description = "\(self.FirstName) \(self.LastName) \(self.State) \(self.PoliticalParty)"
        return description
    }
}
