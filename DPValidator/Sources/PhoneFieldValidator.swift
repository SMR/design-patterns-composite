//
//  PhoneFieldValidator.swift
//  DPValidator
//
//  Created by vinicius on 3/6/16.
//  Copyright © 2016 iOSHouse. All rights reserved.
//

import Foundation

public class PhoneFieldValidator : DPFieldValidator {
    
    public override init() {
        super.init()
        
        self.addFieldValidator(DPNumberFieldValidator())
        self.addFieldValidator(DPRequiredFieldValidator())
        self.addFieldValidator(DPMinLengthFieldValidator(8))
        self.addFieldValidator(DPMaxLengthFieldValidator(10))
    }
}