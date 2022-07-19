//
//  LoginView.swift
//  swift-uiTests
//
//  Created by Douglas Henrique de Souza Pereira on 13/07/22.
//

import Cocoa
import AppKit
import SnapKit

class LoginView: NSView {
    internal var screenWidth = NSScreen.main?.frame.size.width
    
    private lazy var loginLabel: NSTextField = {
       let label = NSTextField()
        label.stringValue = "UI Test"
        label.font = NSFont.systemFont(ofSize: 22, weight: .semibold)
        label.isBezeled = false
        label.drawsBackground = false
        label.isEditable = false
        label.isSelectable = false
        return label
    }()
    
    private lazy var emailField: NSTextField = {
       let field = NSTextField()
        field.translatesAutoresizingMaskIntoConstraints = false
        field.bezelStyle = .roundedBezel
        field.maximumNumberOfLines = 1
        field.contentType = .username
        field.placeholderString = "E-mail ou usuário"
        return field
    }()
    
    private lazy var passwordField: NSSecureTextField = {
       let field = NSSecureTextField()
        field.translatesAutoresizingMaskIntoConstraints = false
        field.bezelStyle = .roundedBezel
        field.maximumNumberOfLines = 1
        field.contentType = .password
        field.placeholderString = "Senha"
        return field
    }()
    
    private lazy var loginButton: NSButton = {
        let button = NSButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer?.backgroundColor = CGColor(red: 1, green: 1, blue: 1, alpha: 1)
        button.contentTintColor = .white
        button.bezelStyle = .texturedSquare
        button.title = "Login"
        button.font = NSFont.systemFont(ofSize: 16, weight: .semibold)
        button.target = self
        return button
    }()
    
    private lazy var loginStack: NSStackView = {
        let stack = NSStackView(
            views: [
                emailField,
                passwordField,
                loginButton
            ]
        )
        stack.alignment = .centerX
        stack.orientation = .vertical
        return stack
    }()
    
    override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)
        addViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addViews(){
        addSubview(loginLabel)
        addSubview(loginStack)
        setupConstraints()
    }
    
    /// Setup constraints of all view elements
    func setupConstraints(){
        loginLabel.snp.makeConstraints { make in
            make.top.equalTo(25)
            make.centerX.equalToSuperview()
        }
        
        loginStack.snp.makeConstraints { make in
            make.leading.top.equalTo(100)
            make.trailing.bottom.equalTo(-100)
        }
        
        emailField.snp.makeConstraints { make in
            make.width.equalTo((screenWidth ?? 150) * 0.2)
        }
        
        passwordField.snp.makeConstraints { make in
            make.width.equalTo((screenWidth ?? 150) * 0.2)
        }
        
        loginButton.snp.makeConstraints { make in
            make.width.equalTo((screenWidth ?? 150) * 0.2)
            make.height.equalTo(40)
        }
    }
}

