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

public class DPRegExFieldValidator : DPFieldValidator {
    
//--------------------------------------------------
// MARK: - Properties
//--------------------------------------------------
    
    let pattern: String
    private var regEx: NSRegularExpression?
    
//--------------------------------------------------
// MARK: - Constructors
//--------------------------------------------------
    
    public init(pattern: String) {
        
        self.pattern = pattern
        
        do {
            self.regEx = try NSRegularExpression(pattern: self.pattern, options: NSRegularExpressionOptions.CaseInsensitive)
        }
        catch {
            print("Invalid regular expression pattern: \(pattern)")
        }
        
        super.init()
        
        self.errorMessage = "This field can only contain numbers."
    }
    
//--------------------------------------------------
// MARK: - Self Public Methods
//--------------------------------------------------
    
    public override func isFieldValid(input: String) -> Bool {
        
        return self.regEx?.firstMatchInString(input, options: NSMatchingOptions.ReportCompletion,
            range: NSMakeRange(0, input.lengthOfBytesUsingEncoding(NSUTF8StringEncoding))) != nil
    }
}