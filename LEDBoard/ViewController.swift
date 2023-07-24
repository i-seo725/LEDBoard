//
//  ViewController.swift
//  LEDBoard
//
//  Created by 이은서 on 2023/07/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var searchAreaView: UIView!
    @IBOutlet var wordTextField: UITextField!
    @IBOutlet var sendButton: UIButton!
    @IBOutlet var randomTextStyleButton: UIButton!
    @IBOutlet var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        designTextField()
        designButton(button: sendButton, title: "Send", color: UIColor.black)
        designButton(button: randomTextStyleButton, title: "Aa", color: UIColor.red)
        searchAreaView.layer.cornerRadius = 10
        designResultLabel()
    }
    
    func designTextField() {
        wordTextField.layer.borderWidth = 0
        wordTextField.layer.borderColor = UIColor.white.cgColor

    }
    func designButton(button: UIButton, title: String, color: UIColor) {
        button.setTitle(title, for: .normal)
        button.backgroundColor = .white
        button.tintColor = color
        button.layer.cornerRadius = 20
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.borderWidth = 2
    }
    func designResultLabel() {
        resultLabel.textAlignment = .center
        resultLabel.numberOfLines = 0
        resultLabel.font = UIFont.systemFont(ofSize: 80)
        resultLabel.text = ""
//        resultLabel.textColor = .white
    }

}

