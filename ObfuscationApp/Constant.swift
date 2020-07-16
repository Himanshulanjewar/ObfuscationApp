//
//  Constant.swift
//  ObfuscationDemo
//
//  Created by Himanshu Lanjewar on 16/07/20.
//

import Foundation

struct Constant {

    var passwordValue = "obfuscation"
    
    private var securePassword: [UInt8]?
    
    func getSecurePassword() -> [UInt8]? {
        return self.securePassword
    }
    
    mutating func setSecurePassword(password: [UInt8]?)  {
        self.securePassword = password
    }
}
