//
//  ViewController.swift
//  CodepathIOS
//
//  Created by Noah Pilkington on 2/3/23.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var FirstNameTextField: UITextField!
    @IBOutlet weak var LastNameTextField: UITextField!
    @IBOutlet weak var SchoolNameTextField: UITextField!
    @IBOutlet weak var PetSwitch: UISwitch!
    @IBOutlet weak var YearSegmentControl: UISegmentedControl!
    @IBOutlet weak var PetsNumberLabel: UILabel!
    @IBAction func PetStepper(_ sender: UIStepper) {
        
        PetsNumberLabel.text = "\(Int(sender.value))"
    }
    
    
    
    
//    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
//
//       // Lets us choose the title we have selected from the segmented control
//       // In our example that is whether it is first, second, third or forth
//       let year = YearSegmentControl.titleForSegment(at: YearSegmentControl.selectedSegmentIndex)
//
//       // Creating a constant of type string that holds an introduction. The introduction receives the values from the outlet connections.
//       let introduction = "Hello my name is \(FirstNameTextField.text!) \(LastNameTextField.text!) and I attend \(SchoolNameTextField.text!). I am currently in my \(year!) year and I own \(PetsNumberLabel.text!) fish. It is \(PetSwitch.isOn) that I want more pets."
//
//       print(introduction)
//   }

    
    @IBAction func IntroduceSelfDidTapped(_ sender: UIButton) {
            
            // Let's us chose the title we have selected from the segmented control
            let year = YearSegmentControl.titleForSegment(at: YearSegmentControl.selectedSegmentIndex)
            
            // Creating a variable of type string, that holds an introduction. The introduction interpolates the values from the text fields provided.
            // Currently we can only present the information in a print statement. However, this lets us verify that our app is printing out what is intended!
            let introduction = "My name is \(FirstNameTextField.text!) \(LastNameTextField.text!) and I attend \(SchoolNameTextField.text!).I am currently in my \(year!) year and I own \(PetsNumberLabel.text!) dogs. It is \(PetSwitch.isOn) that I want more pets."
            
            
            // Creates the alert where we pass in our message, which our introduction.
            let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
            
            // A way to dismiss the box once it pops up
            let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
            
            // Passing this action to the alert controller so it can be dismissed
            alertController.addAction(action)
            
            present(alertController, animated: true, completion: nil)
        }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


}

