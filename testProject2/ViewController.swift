//
//  ViewController.swift
//  testProject2
//
//  Created by Srimanth Yarlagadda on 1/25/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var schoolName: UITextField!
    
    @IBOutlet weak var yearSegmented: UISegmentedControl!
    
    @IBOutlet weak var petCount: UILabel!
    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBAction func petCountStepper(_ sender: UIStepper) {
        petCount.text = "\(Int(sender.value))"
    }
    @IBAction func introduceButton(_ sender: Any) {
        let year = yearSegmented.titleForSegment(at: yearSegmented.selectedSegmentIndex)
        
        // Creating a variable of type string, that holds an introduction. The introduction interpolates the values from the text fields provided.
        // Currently we can only present the information in a print statement. However, this lets us verify that our app is printing out what is intended!
        
        let introduction = """
My name is \(firstName.text!) \(lastName.text!) and I attend \(schoolName.text!). \
I am currently in my \(year!) year and I own \(petCount.text!) dogs. \
It is \(morePetsSwitch.isOn) that I want more pets.
"""
                
                
                // Creates the alert where we pass in our message, which our introduction.
                let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
                
                // A way to dismiss the box once it pops up
                let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
                
                // Passing this action to the alert controller so it can be dismissed
                alertController.addAction(action)
                
                present(alertController, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

