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

public class DPNumberFieldValidator : DPRegExFieldValidator {
    
//--------------------------------------------------
// MARK: - Properties
//--------------------------------------------------
    
//--------------------------------------------------
// MARK: - Constructors
//--------------------------------------------------
    
    public init() {
        super.init(pattern: "^[0-9]*$")
        self.errorMessage = "This field can only contain numbers."
    }
}