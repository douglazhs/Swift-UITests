//
//  HomeViewController.swift
//  swift-uiTests
//
//  Created by Douglas Henrique de Souza Pereira on 13/07/22.
//

import Foundation
import AppKit
import SnapKit

class HomeViewController: NSViewController{
    private lazy var homeLabel: NSTextField = {
       let label = NSTextField()
        label.stringValue = "Olá visitante!"
        label.font = NSFont.systemFont(ofSize: 22, weight: .semibold)
        label.isBezeled = false
        label.drawsBackground = false
        label.isEditable = false
        label.isSelectable = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayout() {
        super.viewDidLayout()
        view.addSubview(homeLabel)
        setupConstrains()
    }
    
    func setupConstrains(){
        homeLabel.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
        }
    }
}
