//
//  main.swift
//  swift-uiTests
//
//  Created by Douglas Henrique de Souza Pereira on 13/07/22.
//

import Cocoa

let app = NSApplication.shared
let delegate = AppDelegate()
app.delegate = delegate

_ = NSApplicationMain(CommandLine.argc, CommandLine.unsafeArgv)
