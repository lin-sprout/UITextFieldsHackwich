//
//  ViewController.swift
//  UITextFieldsHackwich
//
//  Created by Danny Devito on 2/8/22.
// (by Lin)

import UIKit

//corner radius extension for button

@IBDesignable extension UIButton {

    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }

    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }

    @IBInspectable var borderColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
}

class ViewController: UIViewController, UITextFieldDelegate{

    //declare outlet variables for the label and text field
    //public or global variables. this means they can be used throughout the entire class
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBOutlet weak var nameTxtField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTxtField.delegate = self
       
        func textFieldShouldReturn(textField: UITextField) -> Bool {
            nameLabel.text = nameTxtField.text
            nameTxtField.resignFirstResponder()
            return true
            
        }
        
    }
// this function takes the txt from the txt field and displays it on the labe when button is pressed
    
    @IBAction func buttonToLabelFunction(_ sender: UIButton)
    {
        //the ?? is called an optional that stores the data to the right of the ?? as a default if nothing is entered
        nameLabel.text = nameTxtField.text ?? "Boinkus"
        nameTxtField.resignFirstResponder()
    }
    
    //local variable can only be used in this function
    //local variable:
    // var DaBoinkus = textOutlet.text
    
    @IBAction func primaryActionTriggered(_ sender: Any)
    {
        nameLabel.text = nameTxtField.text
        nameTxtField.resignFirstResponder()
    }
}

