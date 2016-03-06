//
//  DPPhoneFieldValidator.swift
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

public class DPMaxLengthFieldValidator : DPFieldValidator {
    
//--------------------------------------------------
// MARK: - Properties
//--------------------------------------------------
    
    let maxLenght: Int
    
//--------------------------------------------------
// MARK: - Constructors
//--------------------------------------------------
    
    init(_ maxLenght: Int) {
        self.maxLenght = maxLenght
        super.init()
        
        self.errorMessage = "Max length should be \(self.maxLenght)."
    }
    
//--------------------------------------------------
// MARK: - Self Public Methods
//--------------------------------------------------
    
    public override func isFieldValid(input: String) -> Bool {
        return input.lengthOfBytesUsingEncoding(NSUTF8StringEncoding) <= self.maxLenght
    }
}
