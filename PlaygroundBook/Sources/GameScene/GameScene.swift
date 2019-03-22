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
    var teste : SKSpriteNode!
    

    override func didMove(to view: SKView) {
        
        if let node = self.childNode(withName: "bailarino") {
            bailarino = node as? SKSpriteNode
            bailarino.removeAllActions()
            bailarino.color = danceColor
            bailarino.colorBlendFactor = 2
            bailarino.run(SKAction.repeatForever(SKAction.animate(with: Array.dicTextures["dancaFeliz"]!, timePerFrame: 0.1)))
        }
        
            //self.backgroundColor = UIColor.clear
        }
    
    }
    
    
//    func buildBear() {
//        let bearAnimatedAtlas = SKTextureAtlas(named: "BearImages")
//        var walkFrames: [SKTexture] = []
//
//        let numImages = bearAnimatedAtlas.textureNames.count
//        for i in 1...numImages {
//            let bearTextureName = "bear\(i)"
//            walkFrames.append(bearAnimatedAtlas.textureNamed(bearTextureName))
//        }
//        bearWalkingFrames = walkFrames
//
//        let firstFrameTexture = bearWalkingFrames[0]
//        bear = SKSpriteNode(texture: firstFrameTexture)
//        bear.position = CGPoint(x: frame.midX, y: frame.midY)
//        addChild(bear)
//    }
//
//    func animateBear() {
//        bear.run(SKAction.repeatForever(
//            SKAction.animate(with: bearWalkingFrames,
//                             timePerFrame: 0.5,
//                             resize: false,
//                             restore: true)),
//                 withKey:"walkingInPlaceBear")
//    }


