//
//  Moon.swift
//  3DEarth
//
//  Created by AB on 6/17/18.
//  Copyright © 2018 Banda. All rights reserved.
//

import UIKit
import SceneKit

class Moon: SCNNode {
    override init(){
        super.init()
        self.name = "moon"
        self.geometry = SCNSphere(radius: 0.2)
        self.geometry?.firstMaterial?.diffuse.contents = UIImage(named: "TexturesCom_Copper_A_1024_albedo")
        self.geometry?.firstMaterial?.specular.contents = UIImage(named: "TexturesCom_Copper_A_1024_metallic")
        self.geometry?.firstMaterial?.normal.contents = UIImage(named: "TexturesCom_Copper_A_1024_normal")
        self.geometry?.firstMaterial?.emission.contents = UIImage(named: "TexturesCom_Copper_A_1024_roughness")
        self.geometry?.firstMaterial?.shininess = 50
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
