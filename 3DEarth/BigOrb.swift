//
//  BigOrb.swift
//  3DEarth
//
//  Created by AB on 6/23/18.
//  Copyright © 2018 Banda. All rights reserved.
//

import UIKit
import SceneKit

class BigOrb: SCNNode {
    override init(){
        super.init()
        
        self.name = "big"
        
        self.geometry = SCNSphere(radius: 1.5)
        //self.geometry?.firstMaterial?.diffuse.contents = UIColor.purple
        self.geometry?.firstMaterial?.diffuse.contents = UIImage(named: "Diffuse")
        self.geometry?.firstMaterial?.specular.contents = UIImage(named: "Specular")
        self.geometry?.firstMaterial?.normal.contents = UIImage(named: "Normal")
        self.geometry?.firstMaterial?.emission.contents = UIImage(named: "Emission")
        self.geometry?.firstMaterial?.shininess = 50
        
//        let action = SCNAction.rotate(by: 360 * CGFloat(Double.pi/180), around: SCNVector3(x: 0, y: 1, z: 0), duration: 8)
//        let repeatAction = SCNAction.repeatForever(action)
//        self.runAction(repeatAction)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
