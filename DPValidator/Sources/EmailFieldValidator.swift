//
//  PhoneFieldValidator.swift
//  DPValidator
//
//  Created by vinicius on 3/6/16.
//  Copyright © 2016 iOSHouse. All rights reserved.
//

import Foundation

public class EmailFieldValidator : DPFieldValidator {
    
    public override init() {
        super.init()
        
        self.addFieldValidator(DPRequiredFieldValidator())
        self.addFieldValidator(DPEmailFieldValidator())
    }
}