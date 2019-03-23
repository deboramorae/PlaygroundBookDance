//
//  DancerScene.swift
//  Book_Sources
//
//  Created by Débora Moraes on 20/03/19.
//

import Foundation
import SpriteKit
import PlaygroundSupport

public class DancerScene : SKScene{
    
    public var dancer : SKSpriteNode!
    public var dancerRaiva: SKSpriteNode!
    public var dancerTriste : SKSpriteNode!
    
    public var dancerSec : SKSpriteNode!
    public var dancerTec : SKSpriteNode!
    
    
    override public func didMove(to view: SKView) {

        dancer = self.childNode(withName: "dancer") as? SKSpriteNode
        dancerRaiva = self.childNode(withName: "dancerRaiva") as? SKSpriteNode
        dancerTriste = self.childNode(withName: "dancerTriste") as?SKSpriteNode
        
        dancerSec = self.childNode(withName: "dancerSec") as?SKSpriteNode
        dancerTec = self.childNode(withName: "dancerTec") as?SKSpriteNode
        
        if let node = self.childNode(withName: "dancer") {
            dancer = node as? SKSpriteNode
            
            dancer.color = danceColor
            dancer.colorBlendFactor = 2
            //let recolor =  SKAction.colorize(withColorBlendFactor: 0, duration: 10.0)
            //dancer.run(recolor)
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
    
    func dancaFeliz(){
        dancerRaiva.alpha = 0
        dancerTriste.alpha = 0
        
        dancer.alpha = 1
        
        dancerTec.alpha = 1
        dancerSec.alpha = 1
        
        dancer.removeAllActions()
        
        dancer.color = danceColor
        dancer.colorBlendFactor = 2
        
        dancerTec.color = danceColor
        dancerTec.colorBlendFactor = 2
        
        dancerSec.color = danceColor
        dancerSec.colorBlendFactor = 2
        
        dancer.run(SKAction.repeatForever(SKAction.animate(with: Array.dicTextures["dancaFeliz"]!, timePerFrame: 0.05)))
        
        dancerTec.run(SKAction.repeatForever(SKAction.animate(with: Array.dicTextures["dancaFeliz"]!, timePerFrame: 0.05)))
        
        dancerSec.run(SKAction.repeatForever(SKAction.animate(with: Array.dicTextures["dancaFeliz"]!, timePerFrame: 0.05)))
    }
    
    func dancaRaiva(){
        dancer.alpha = 0
        dancerTriste.alpha = 0
        dancerTec.alpha = 0
        dancerSec.alpha = 0
        
        dancerRaiva.alpha = 1
        dancerRaiva.removeAllActions()
        dancerRaiva.color = danceColor
        dancerRaiva.colorBlendFactor = 2
        dancerRaiva.run(SKAction.repeatForever(SKAction.animate(with: Array.dicTextures["dancaRaiva"]!, timePerFrame: 0.06)))
    }
    
    func dancaTriste()  {
        dancerRaiva.alpha = 0
        dancer.alpha = 0
        
        dancerTec.alpha = 0
        dancerSec.alpha = 0
        
        dancerTriste.alpha = 1
        dancerTriste.removeAllActions()
        dancerTriste.color = danceColor
        dancerTriste.colorBlendFactor = 2
        dancerTriste.run(SKAction.repeatForever(SKAction.animate(with: Array.dicTextures["dancaTristeza"]!, timePerFrame: 0.1)))
        
    }
}
    

