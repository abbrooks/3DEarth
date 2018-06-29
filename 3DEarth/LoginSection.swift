//
//  LoginSection.swift
//  3DEarth
//
//  Created by AB on 6/23/18.
//  Copyright © 2018 Banda. All rights reserved.
//

import UIKit
import SceneKit

class LoginSection: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        //
        let scene = SCNScene()
        
        let cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        cameraNode.position = SCNVector3(x: 0, y: 0, z: 5)
        cameraNode.eulerAngles.z = 0.4101524
        scene.rootNode.addChildNode(cameraNode)
        
        let lightNode = SCNNode()
        lightNode.light = SCNLight()
        lightNode.light?.type = .omni
        lightNode.position = SCNVector3(x: 4, y: 1, z: 5)
        scene.rootNode.addChildNode(lightNode)
        
        let stars = SCNParticleSystem(named: "StarParticles.scnp", inDirectory: nil)!
        scene.rootNode.addParticleSystem(stars)
        
        let earthNode = BigOrb()
        earthNode.position = SCNVector3(x: 1.25, y: -2.5, z: 0)
        scene.rootNode.addChildNode(earthNode)
        
        let sceneView = self.view as! SCNView
        sceneView.scene = scene
        sceneView.showsStatistics = true
        sceneView.backgroundColor = UIColor.black
        sceneView.allowsCameraControl = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
