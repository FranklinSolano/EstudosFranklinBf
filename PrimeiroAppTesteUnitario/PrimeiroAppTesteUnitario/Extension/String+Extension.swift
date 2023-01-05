//
//  String+Extension.swift
//  PrimeiroAppTesteUnitario
//
//  Created by Franklin  Stilhano on 1/4/23.
//

import Foundation
import UIKit

enum ValidType{
    case email
    case password
}

extension String {
    
    func removeWhiteSpace() -> String{
        return self.replace(string: " ",replacement:"")
    }
    
    func replace(string:String, replacement:String) -> String {
        return self.replacingOccurrences(of: string, with: replacement, options: .literal, range: nil)
    }
    
    private enum Regex: String {
        case email = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        case password = ".{6,}"
    }
    
    func isValid(validType: ValidType) -> Bool {
        let format = "SELF MATCHES %@"
        var regex = ""
        
        switch validType {
        case .email:
            regex = Regex.email.rawValue
        case .password:
            regex = Regex.password.rawValue
        }
        return NSPredicate(format:format, regex).evaluate(with: self)
    }
}
