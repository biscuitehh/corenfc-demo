//
//  ViewController.swift
//  NFC Demo
//
//  Created by Michael Thomas on 6/6/17.
//  Copyright © 2017 Michael Thomas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let scanner = NFCScanner(invalidateAfterFirstRead: false)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.scanner.start()
    }
    
}

