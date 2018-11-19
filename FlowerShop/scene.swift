//
//  scene.swift
//  FlowerShop
//
//  Created by Yichen Jia on 11/18/18.
//  Copyright © 2018 Brian Advent. All rights reserved.
//

// import Foundation
import SpriteKit
import ARKit

class Scene: SKScene {
    
    // Lynda Tutorial I: detect when/where the user is touching the screen
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let sceneView = self.view as? ARSKView else {return}
        
        if let touchLocation = touches.first?.location (in: sceneView) {
            if let hit = sceneView.hitTest(touchLocation, types: .featurePoint).first {
                sceneView.session.add(anchor: ARAnchor(transform: hit.worldTransform))
            }
        }
    }
}
