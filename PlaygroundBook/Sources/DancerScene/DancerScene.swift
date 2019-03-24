//
//  DancerScene.swift
//  Book_Sources
//
//  Created by Débora Moraes on 20/03/19.
//

import Foundation
import SpriteKit
import PlaygroundSupport
import AVFoundation

public class DancerScene : SKScene{
    
    var dancer : SKSpriteNode!
    var dancerRaiva: SKSpriteNode!
    var dancerTriste : SKSpriteNode!
    
    var dancerSec : SKSpriteNode!
    var dancerTec : SKSpriteNode!
    
    var palco : SKSpriteNode!
    var palcoClaro : SKSpriteNode!
    
    var player : AVAudioPlayer?
    
    
    override public func didMove(to view: SKView) {

        dancer = self.childNode(withName: "dancer") as? SKSpriteNode
        dancerRaiva = self.childNode(withName: "dancerRaiva") as? SKSpriteNode
        dancerTriste = self.childNode(withName: "dancerTriste") as?SKSpriteNode
        
        dancerSec = self.childNode(withName: "dancerSec") as?SKSpriteNode
        dancerTec = self.childNode(withName: "dancerTec") as?SKSpriteNode
        
        palco = self.childNode(withName: "palco") as? SKSpriteNode
        palcoClaro = self.childNode(withName: "palcoClaro") as? SKSpriteNode
        
        if let node = self.childNode(withName: "dancer") {
            dancer = node as? SKSpriteNode
            
            dancer.color = danceColor
            dancer.colorBlendFactor = 2
            //let recolor =  SKAction.colorize(withColorBlendFactor: 0, duration: 10.0)
            //dancer.run(recolor)
        }
        if toDance{
            
            switch emotion {
            case .angry:
                dancaRaiva()
                playAudio(fileName: "Virtual_Light.mp3")
                
            case .happy:
                dancaFeliz()
                playAudio(fileName: "Active_Form.mp3")
            case .sad:
                dancaTriste()
                playAudio(fileName: "Descent.mp3")
            }
        }
    }
    
    func dancaFeliz(){
        dancerRaiva.alpha = 0
        dancerTriste.alpha = 0
        
        dancer.alpha = 1
        
        dancerTec.alpha = 0.8
        dancerSec.alpha = 0.8
        
        dancer.removeAllActions()
        
        dancer.color = danceColor
        dancer.colorBlendFactor = 2
        
        dancerTec.color = danceColor
        dancerTec.colorBlendFactor = 2
        
        dancerSec.color = danceColor
        dancerSec.colorBlendFactor = 2
        
        switch scenario {
        case .dark:
            palcoClaro.alpha = 0
            palco.alpha = 1
        case .light:
            palco.alpha = 0
            palcoClaro.alpha = 1
        }
        
        switch velocity {
        case .alta:
            dancer.run(SKAction.repeatForever(SKAction.animate(with: Array.dicTextures["dancaFeliz"]!, timePerFrame: 0.05)))
            
            dancerTec.run(SKAction.repeatForever(SKAction.animate(with: Array.dicTextures["dancaFeliz"]!, timePerFrame: 0.05)))
            
            dancerSec.run(SKAction.repeatForever(SKAction.animate(with: Array.dicTextures["dancaFeliz"]!, timePerFrame: 0.05)))
        case .media:
            dancer.run(SKAction.repeatForever(SKAction.animate(with: Array.dicTextures["dancaFeliz"]!, timePerFrame: 0.03)))
            
            dancerTec.run(SKAction.repeatForever(SKAction.animate(with: Array.dicTextures["dancaFeliz"]!, timePerFrame: 0.03)))
            
            dancerSec.run(SKAction.repeatForever(SKAction.animate(with: Array.dicTextures["dancaFeliz"]!, timePerFrame: 0.03)))
        case .baixa:
            dancer.run(SKAction.repeatForever(SKAction.animate(with: Array.dicTextures["dancaFeliz"]!, timePerFrame: 0.1)))
            
            dancerTec.run(SKAction.repeatForever(SKAction.animate(with: Array.dicTextures["dancaFeliz"]!, timePerFrame: 0.1)))
            
            dancerSec.run(SKAction.repeatForever(SKAction.animate(with: Array.dicTextures["dancaFeliz"]!, timePerFrame: 0.1)))
        }
        
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
        
        switch scenario {
        case .dark:
            palcoClaro.alpha = 0
            palco.alpha = 1
        case .light:
            palco.alpha = 0
            palcoClaro.alpha = 1
        }
        
        switch velocity {
        case .alta:
            dancerRaiva.run(SKAction.repeatForever(SKAction.animate(with: Array.dicTextures["dancaRaiva"]!, timePerFrame: 0.06)))
        
        case .baixa:
            dancerRaiva.run(SKAction.repeatForever(SKAction.animate(with: Array.dicTextures["dancaRaiva"]!, timePerFrame: 0.1)))
        case .media:
            dancerRaiva.run(SKAction.repeatForever(SKAction.animate(with: Array.dicTextures["dancaRaiva"]!, timePerFrame: 0.03)))
        }
        
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
        
        switch scenario {
        case .dark:
            palcoClaro.alpha = 0
            palco.alpha = 1
        case .light:
            palco.alpha = 0
            palcoClaro.alpha = 1
        }
        
        switch velocity {
        case .alta:
            dancerTriste.run(SKAction.repeatForever(SKAction.animate(with: Array.dicTextures["dancaTristeza"]!, timePerFrame: 0.03)))
            
        case .baixa:
            dancerTriste.run(SKAction.repeatForever(SKAction.animate(with: Array.dicTextures["dancaTristeza"]!, timePerFrame: 0.1)))
        case .media:
            dancerTriste.run(SKAction.repeatForever(SKAction.animate(with: Array.dicTextures["dancaTristeza"]!, timePerFrame: 0.06)))
        }
        
    }
    
    func playAudio(fileName : String){
        let path = Bundle.main.path(forResource: fileName, ofType: nil)!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player!.play()
        } catch  {
            print(error)
        }
    }
}
    

