//
//  Ultls.swift
//  PrimeiroAppViewCode
//
//  Created by Franklin  Stilhano on 12/29/22.
//

import Foundation


class Utils {
    
    static func saveUserDefaults(value: Any, key: String) {
        UserDefaults.standard.set(value, forKey: key)
    }
    
    static func removeUserDefaults(key: String) {
        UserDefaults.standard.removeObject(forKey: key)
    }
    
    static func getUserDefaults(key: String) -> Any? {
        return UserDefaults.standard.object(forKey: key)
    }
    
}

