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

public class DPEmailFieldValidator : DPRegExFieldValidator {
    
//--------------------------------------------------
// MARK: - Properties
//--------------------------------------------------
    
//--------------------------------------------------
// MARK: - Constructors
//--------------------------------------------------
    
    public init() {
        super.init(pattern: "^[A-Z0-9a-z\\._%+-]+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2,4}$")
        self.errorMessage = "Invalid email."
    }
    
//--------------------------------------------------
// MARK: - Self Public Methods
//--------------------------------------------------

}