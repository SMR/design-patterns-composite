//
//  DPValidator.swift
//  DPValidator
//
//  Created by vinicius on 3/6/16.
//  Copyright © 2016 iOSHouse. All rights reserved.
//

import Foundation

//----------------------------------------------------------------------------------------------------------
//
// MARK: - Definition -
//
//----------------------------------------------------------------------------------------------------------

public protocol FieldValidator {
    
    var errorMessage: String? {get set}
    
    func isFieldValid(input: String) -> Bool
}

//----------------------------------------------------------------------------------------------------------
//
// MARK: - Class -
//
//----------------------------------------------------------------------------------------------------------

public class DPFieldValidator : NSObject, FieldValidator {
    
//--------------------------------------------------
// MARK: - Properties
//--------------------------------------------------
    
    public var errorMessage: String? = ""
    
    var fieldValidators = [FieldValidator]()
    
//--------------------------------------------------
// MARK: - Internal Methods
//--------------------------------------------------
    
    public func isFieldValid(input: String) -> Bool {
        
        for fieldValidator in self.fieldValidators {
            if !fieldValidator.isFieldValid(input) {
                
                self.errorMessage = fieldValidator.errorMessage
                
                return false
            }
        }
        
        return true
    }
    
    func addFieldValidator(fieldValidator: FieldValidator) {
        self.fieldValidators.append(fieldValidator)
    }
}