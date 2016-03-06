//
//  RequiredFieldValidator.swift
//  DPValidator
//
//  Created by vinicius on 3/6/16.
//  Copyright © 2016 iOSHouse. All rights reserved.
//

import Foundation

//----------------------------------------------------------------------------------------------------------
//
// MARK: - Class -
//
//----------------------------------------------------------------------------------------------------------

public class DPRequiredFieldValidator : DPFieldValidator {
    
//--------------------------------------------------
// MARK: - Properties
//--------------------------------------------------
    
//--------------------------------------------------
// MARK: - Constructors
//--------------------------------------------------
    
    override init() {
        super.init()
        self.errorMessage = "This field is required."
    }
    
//--------------------------------------------------
// MARK: - Self Public Methods
//--------------------------------------------------
    
    public override func isFieldValid(input: String) -> Bool {
        
        return input.lengthOfBytesUsingEncoding(NSUTF8StringEncoding) > 0
    }
}