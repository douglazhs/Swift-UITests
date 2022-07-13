//
//  ViewController.swift
//  swift-uiTests
//
//  Created by Douglas Henrique de Souza Pereira on 13/07/22.
//

import Cocoa
import AppKit

class ViewController: NSViewController {
    internal var screenWidth = NSScreen.main?.frame.size.width
    
    private lazy var emailField: NSTextField = {
       let field = NSTextField()
        field.backgroundColor = NSColor(red: 1, green: 1, blue: 1, alpha: 1)
        field.layer?.cornerRadius = 12
        return field
    }()
    
    private lazy var passwordField: NSTextField = {
       let field = NSTextField()
        field.backgroundColor = NSColor(red: 1, green: 1, blue: 1, alpha: 1)
        field.layer?.cornerRadius = 12
        return field
    }()
    
    private lazy var loginButton: NSButton = {
        let button = NSButton()
        button.frame = CGRect(x: 0, y: 0, width: screenWidth * 0.8, height: 75)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayout() {
        super.viewDidLayout()
        view.addSubview(emailField)
        view.addSubview(passwordField)
    }

    override var representedObject: Any? {
        didSet {
        
        }
    }
}

