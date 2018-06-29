//
//  SKScene1.swift
//  3DEarth
//
//  Created by AB on 6/23/18.
//  Copyright © 2018 Banda. All rights reserved.
//

import UIKit
import SpriteKit
import CoreGraphics

class SKScene1: SKScene {
    let firstNode = SKNode()
    let firstSpriteNode = SKSpriteNode(color: UIColor.red, size:CGSize(width: 1.5, height: 0.5))
    
    let secondSpriteNode = SKSpriteNode(color: UIColor.blue, size: CGSize(width: 0.3, height: 0.3))
    
    
    override func didMove(to view: SKView){
//        addChild(firstNode)
//        addChild(firstSpriteNode)
//        addChild(secondSpriteNode)
        
        
        let textField = UITextField(frame: CGRect(x: self.size.width / 2, y: self.size.height / 2 + 20, width: 200, height: 40))
        textField.center = view.center
        textField.borderStyle = .roundedRect
        textField.tag = 101
        textField.textColor = UIColor.white
        textField.font = UIFont.systemFont(ofSize: 17.0)
        textField.placeholder = "Enter your name here"
        textField.backgroundColor = UIColor.black
        textField.autocorrectionType = .yes
        textField.keyboardType = .default
        textField.clearButtonMode = .whileEditing
        textField.isEnabled = true
        
        let label = UILabel()
        label.text = "You sucka sucka!"
        label.textColor = UIColor.white
        
        
//        let newView = UIView()
//        newView.isUserInteractionEnabled = true
//        newView.addSubview(textField)
//        view.addSubview(newView)
//        view.addSubview(textField)
        self.view!.addSubview(label)
        
        
        
        
        
    }
}
