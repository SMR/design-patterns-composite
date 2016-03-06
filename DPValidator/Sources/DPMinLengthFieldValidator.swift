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

public class DPMinLengthFieldValidator : DPFieldValidator {
    
//--------------------------------------------------
// MARK: - Properties
//--------------------------------------------------
    
    let minLenght: Int
    
//--------------------------------------------------
// MARK: - Constructors
//--------------------------------------------------
    
    init(_ minLength: Int = 0) {
        self.minLenght = minLength
        super.init()
        
        self.errorMessage = "Min length should be \(self.minLenght)."
    }
    
//--------------------------------------------------
// MARK: - Self Public Methods
//--------------------------------------------------
    
    public override func isFieldValid(input: String) -> Bool {
        return input.lengthOfBytesUsingEncoding(NSUTF8StringEncoding) >= self.minLenght
    }
}
