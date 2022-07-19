//
//  LoginViewController.swift
//  InterfaceTests
//
//  Created by Douglas Henrique de Souza Pereira on 15/07/22.
//

import Foundation
import AppKit

class LoginViewController: NSViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        self.view = LoginView(frame: NSRect(x: 0, y: 0, width: 270, height: 270))
    }
    
    override var representedObject: Any? {
        didSet {}
    }
}
