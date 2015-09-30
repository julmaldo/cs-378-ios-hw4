//
//  AddCanidateViewController.swift
//  MaldonadoJulio-hw4
//
//  Created by Julio Maldonado on 9/29/15.
//  Copyright © 2015 Julio Maldonado. All rights reserved.
//

import UIKit

class AddCanidateViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Add Canidate"
        FirstNameTextField.delegate = self
        LastNameTextField.delegate = self
        StateTextField.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //makes the keyboard disapear when clicking on something outside the keyboard
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        if let _ = touches.first {
            view.endEditing(true)
        }
        super.touchesBegan(touches, withEvent:event)
    }

    //dismisses keyboard when return is pressed
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true;
    }

    //variables
    @IBOutlet weak var FirstNameTextField: UITextField!
    @IBOutlet weak var LastNameTextField: UITextField!
    @IBOutlet weak var StateTextField: UITextField!
    @IBOutlet weak var PolitcalPartyChoice: UISegmentedControl!
    @IBOutlet weak var SaveButton: UIButton!
    @IBOutlet weak var SaveConfirmation: UILabel!
    
    //button handler checks if fields are filled and then
    @IBAction func SaveButtonClicked(sender: AnyObject) {
        self.view.endEditing(true)
        if textFeildFilled(FirstNameTextField.text!, last: LastNameTextField.text!, state: StateTextField.text!) {
            SaveConfirmation.text = "Canidate Saved!"
        } else{
            SaveConfirmation.text = "You must enter a value for First and Last name and State!!"
        }
    }
    
    //check if string contains a value and returns true if there is and false if not
    func textFeildFilled(first:String,last:String, state:String) -> Bool {
        var result = true
        if first.isEmpty || last.isEmpty || state.isEmpty{
            result = false
        }
        return result
    }
}
