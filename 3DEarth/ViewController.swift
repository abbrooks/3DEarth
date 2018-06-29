//
//  ViewController.swift
//  3DEarth
//
//  Created by AB on 6/16/18.
//  Copyright © 2018 Banda. All rights reserved.
//

import UIKit
import SceneKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
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
        
        let earthNode = EarthNode()
        scene.rootNode.addChildNode(earthNode)
        
        let moonNode1 = Moon()
        scene.rootNode.addChildNode(moonNode1)
        moonNode1.position = SCNVector3(x: 1.5,y: 0, z: 0)
        
        let moonNode2 = Moon()
        scene.rootNode.addChildNode(moonNode2)
        moonNode2.position = SCNVector3(x: 0,y: 1.5, z: 0)
        
        let moonNode3 = Moon()
        scene.rootNode.addChildNode(moonNode3)
        moonNode3.position = SCNVector3(x: 0,y: -1.5, z: 0)
        
        let moonNode4 = Moon()
        scene.rootNode.addChildNode(moonNode4)
        moonNode4.position = SCNVector3(x: -1.5,y: 0, z: 0)
        
        let sceneView = self.view as! SCNView
        sceneView.scene = scene
        sceneView.showsStatistics = true
        sceneView.backgroundColor = UIColor.black
        sceneView.allowsCameraControl = false
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap(_:)))
        let gestureRecognizers = NSMutableArray()
        gestureRecognizers.add(tapGesture)
        if let existingGestureRecognizers = sceneView.gestureRecognizers{
            gestureRecognizers.addObjects(from: existingGestureRecognizers)
        }
        sceneView.gestureRecognizers = gestureRecognizers as? [UIGestureRecognizer]
        
        //scnScene.overlaySKScene
        //let billboard = SCNNode()
        let big = SKScene1()
        sceneView.overlaySKScene = big
        
    }
    
    @objc func handleTap(_ gestureRecognize: UIGestureRecognizer){
        let scnView = self.view as! SCNView
        let p = gestureRecognize.location(in: scnView)
        let hitResults = scnView.hitTest(p, options: nil)
        if hitResults.count > 0{
            let result: AnyObject! = hitResults[0]
            
            //do something with result
            let tapName = result.node!.name
            let material = result.node!.geometry!.firstMaterial!


            if tapName == "earth"{
                SCNTransaction.begin()
                SCNTransaction.animationDuration = 0.5
                SCNTransaction.completionBlock = {
                    SCNTransaction.begin()
                    SCNTransaction.animationDuration = 0.5
                    //do something
                    SCNTransaction.commit()
                    self.performSegue(withIdentifier: "earthTapped", sender: self)
                    //material.emission.contents = UIColor.blue
                }
                //something else
                material.emission.contents = UIColor.red
                SCNTransaction.commit()
            }
            if tapName == "moon"{
                
            }
        }
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

