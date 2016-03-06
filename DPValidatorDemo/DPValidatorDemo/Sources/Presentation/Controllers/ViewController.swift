//
//  ViewController.swift
//  DPValidatorDemo
//
//  Created by vinicius on 3/6/16.
//  Copyright © 2016 iOSHouse. All rights reserved.
//

import UIKit
import DPValidator

//----------------------------------------------------------------------------------------------------------
//
// MARK: - Class -
//
//----------------------------------------------------------------------------------------------------------

class ViewController: UIViewController {

//--------------------------------------------------
// MARK: - Properties
//--------------------------------------------------
    
    @IBOutlet weak var emailAddressTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    
    @IBOutlet weak var emailFeedbackLabel: UILabel!
    @IBOutlet weak var phoneNuberFeedbackLabel: UILabel!
    @IBOutlet weak var validFeedbackLabel: UILabel!
    
//--------------------------------------------------
// MARK: - Internal Methods
//--------------------------------------------------
    
    @IBAction func validateInput(sender: UIButton) {

        var isFormValid = true
        
        let emailFieldValidator = EmailFieldValidator()
        let phoneFieldValidator = PhoneFieldValidator()
        
        self.emailFeedbackLabel.alpha = 0
        self.phoneNuberFeedbackLabel.alpha = 0
        self.validFeedbackLabel.alpha = 0
        
        // email
        if !emailFieldValidator.isFieldValid(self.emailAddressTextField.text!) {
            self.emailFeedbackLabel.text = emailFieldValidator.errorMessage
            self.animateFeedbackLabel(self.emailFeedbackLabel, duration: 0.2)
            isFormValid = false
        }
        else {
            self.emailFeedbackLabel.text = ""
            self.animateFeedbackLabel(self.emailFeedbackLabel, duration: 1)
        }
        
        // phone number
        if !phoneFieldValidator.isFieldValid(self.phoneNumberTextField.text!) {
            self.phoneNuberFeedbackLabel.text = phoneFieldValidator.errorMessage
            self.animateFeedbackLabel(self.phoneNuberFeedbackLabel, duration: 0.2)
            isFormValid = false
        }
        else {
            self.phoneNuberFeedbackLabel.text = ""
            self.animateFeedbackLabel(self.phoneNuberFeedbackLabel, duration: 1)
        }
        
        // check overall validation
        if isFormValid {
            self.validFeedbackLabel.text = "All right, let's move on! 😁"
            self.animateFeedbackLabel(self.validFeedbackLabel, duration: 1)
        }
    }
    
    func animateFeedbackLabel(label: UILabel, duration: NSTimeInterval) {
        UIView.animateWithDuration(duration, animations: { () -> Void in
            label.alpha = 1
        })
    }
    
//--------------------------------------------------
// MARK: - Override Public Methods
//--------------------------------------------------
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.emailAddressTextField.becomeFirstResponder()
    }
}

