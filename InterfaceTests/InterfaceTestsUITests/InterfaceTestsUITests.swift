//
//  InterfaceTestsUITests.swift
//  InterfaceTestsUITests
//
//  Created by Douglas Henrique de Souza Pereira on 15/07/22.
//

import XCTest

class InterfaceTestsUITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLoginView() throws {
        let app = XCUIApplication()
        app.launch()
        
        let emailField = app.textFields["E-mail ou usuário"]
        XCTAssert(emailField.exists)
        
        emailField.tap()
        emailField.typeText("douglashenrike.dsp@gmail.com")
        
        let passwordField = app.secureTextFields["Senha"]
        XCTAssert(passwordField.exists)
        
        passwordField.tap()
        passwordField.typeText("douglas123")
        
        let loginButton = app.buttons["Login"]
        XCTAssert(loginButton.exists)
        
        loginButton.click()
    }
}
