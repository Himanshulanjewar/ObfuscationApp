//
//  ViewController.swift
//  ObfuscationApp
//
//  Created by Himanshu Lanjewar on 16/07/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Define the Salt key
        let o = Obfuscator(withSalt: [AppDelegate.self, NSObject.self, NSString.self])
        
        // Generate the byte array
        let bytes = o.bytesByObfuscatingString(string: Constant.passwordValue)
        print(bytes)
        
        
        // Reveal the string
        let value = o.reveal(key: bytes)
        print(value)
    }


}

