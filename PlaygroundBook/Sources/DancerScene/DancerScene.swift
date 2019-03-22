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
    var button : SKSpriteNode!
    
    override public func didMove(to view: SKView) {
        
        button = self.childNode(withName: "button") as? SKSpriteNode

        dancer = self.childNode(withName: "dancer") as? SKSpriteNode
        
        if let node = self.childNode(withName: "dancer") {
            dancer = node as? SKSpriteNode
            dancer.color = danceColor
            dancer.colorBlendFactor = 2
            //let recolor =  SKAction.colorize(withColorBlendFactor: 0, duration: 10.0)
            //dancer.run(recolor)
        }
    }
    func changeColor(color: UIColor?){
        button = self.childNode(withName: "button") as? SKSpriteNode
        
        dancer = self.childNode(withName: "dancer") as? SKSpriteNode
        if let node = self.childNode(withName: "dancer") {
            dancer = node as? SKSpriteNode
            dancer.color = color!
            dancer.colorBlendFactor = 2
            //let recolor =  SKAction.colorize(withColorBlendFactor: 0, duration: 10.0)
            //dancer.run(recolor)
        }
    }
    
    override public func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        
        if let location = touch?.location(in: self){
            let nodesArray = self.nodes(at: location)
            
            if nodesArray.first?.name == "button"{
                dancer.color = UIColor.black
                dancer.colorBlendFactor = 2
            }
                
        }
    
    }
    
    }
