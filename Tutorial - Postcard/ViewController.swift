//
//  ViewController.swift
//  Tutorial - Postcard
//
//  Created by Ben Humphreys on 12/09/2014.
//  Copyright (c) 2014 w84u2cy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var messageLabel: UILabel!

    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterAMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMessageButtonPressed(sender: UIButton)
        {
        // Code will evaluate when the button is pressed.
        messageLabel.hidden = false
        messageLabel.text = enterAMessageTextField.text
        enterAMessageTextField.text = ""
        enterAMessageTextField.resignFirstResponder()
        messageLabel.textColor = UIColor.blueColor()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }


}

