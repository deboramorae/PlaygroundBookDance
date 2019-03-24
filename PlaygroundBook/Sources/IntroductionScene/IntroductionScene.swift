//
//  IntroducaoScene.swift
//  Book_Sources
//
//  Created by Débora Moraes on 23/03/19.
//

import Foundation
import SpriteKit

class IntroductionScene: SKScene {
    var balao : SKSpriteNode!
    var label : SKLabelNode!
    
    override func didMove(to view: SKView) {
        balao = self.childNode(withName: "balao") as? SKSpriteNode
        label = self.childNode(withName: "label") as? SKLabelNode
        
        balao.run(SKAction.fadeIn(withDuration: 6))
        label.run(SKAction.fadeIn(withDuration: 6))
    }
}

