//
//  GameScene.swift
//  SpriteTestePlay
//
//  Created by Débora Moraes on 19/03/19.
//  Copyright © 2019 Academy. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
//    private var bear = SKSpriteNode()
//    private var bearWalkingFrames: [SKTexture] = []

    var bailarino: SKSpriteNode!
    var bailarinoSad: SKSpriteNode!
    var bailarinoAngry : SKSpriteNode!

    var bailaSec : SKSpriteNode!
    var bailaTerc : SKSpriteNode!
    

    override func didMove(to view: SKView) {
        
        bailarino = self.childNode(withName: "bailarino") as? SKSpriteNode
        bailarinoSad = self.childNode(withName: "bailarinoSad") as? SKSpriteNode
        bailarinoAngry = self.childNode(withName: "bailarinoAngry") as? SKSpriteNode
        
        bailaSec = self.childNode(withName: "bailaSec") as? SKSpriteNode
        bailaTerc = self.childNode(withName: "bailaTerc") as? SKSpriteNode
        
        if let node = self.childNode(withName: "bailarino") {
            bailarino = node as? SKSpriteNode
            
            bailarino.color = danceColor
            bailarino.colorBlendFactor = 2
        }
        
        if dancar{
            
            switch emotion {
            case .angry:
                
                dancaRaiva()
                
            case .happy:
                dancaFeliz()
            case .sad:
                dancaTriste()
            }
            
        }
}

    
    
    func dancaRaiva(){
        bailarino.alpha = 0
        bailarinoSad.alpha = 0
        
        bailaSec.alpha = 0
        bailaTerc.alpha = 0
        
        bailarinoAngry.alpha = 1
        bailarinoAngry.removeAllActions()
        bailarinoAngry.color = emotions[2].color!
        bailarinoAngry.colorBlendFactor = 2
        bailarinoAngry.run(SKAction.repeatForever(SKAction.animate(with: Array.dicTextures["dancaRaiva"]!, timePerFrame: 0.06)))
    }
    
    func dancaFeliz() {
        bailarinoSad.alpha = 0
        bailarinoAngry.alpha = 0
        
        bailarino.alpha = 1
        bailaTerc.alpha = 1
        bailaSec.alpha = 1
        
        bailarino.removeAllActions()
        bailarino.color = emotions[0].color!
        bailarino.colorBlendFactor = 2
        
        bailaSec.color = emotions[0].color!
        bailaSec.colorBlendFactor = 2
        
        bailaTerc.color = emotions[0].color!
        bailaTerc.colorBlendFactor = 2
        
        
        bailaSec.run(SKAction.repeatForever(SKAction.animate(with: Array.dicTextures["dancaFeliz"]!, timePerFrame: 0.05)))
        bailaTerc.run(SKAction.repeatForever(SKAction.animate(with: Array.dicTextures["dancaFeliz"]!, timePerFrame: 0.05)))
        bailarino.run(SKAction.repeatForever(SKAction.animate(with: Array.dicTextures["dancaFeliz"]!, timePerFrame: 0.05)))
        
    }
    
    func dancaTriste(){
        bailarino.alpha = 0
        bailarinoAngry.alpha = 0
        bailaSec.alpha = 0
        bailaTerc.alpha = 0
        
        bailarinoSad.alpha = 1
        bailarinoSad.removeAllActions()
        bailarinoSad.color = emotions[1].color!
        bailarinoSad.colorBlendFactor = 2
        bailarinoSad.run(SKAction.repeatForever(SKAction.animate(with: Array.dicTextures["dancaTristeza"]!, timePerFrame: 0.1)))
    }
}




