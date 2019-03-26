import Foundation
import UIKit
import SpriteKit

public enum Emotion {
    case angry
    case happy
    case sad
}

public enum Velocidade {
    case low
    case mid
    case high
}

public enum Scene {
    case light
    case dark
}

public class Emotions{
    
     var velocidade : Velocidade!
     var emotion: Emotion!
    
     var color : UIColor!
    
    init(velocidade : Velocidade!, emotion: Emotion, color: UIColor ) {
        self.velocidade = velocidade
        self.emotion = emotion
        self.color = color
    }
    
}
public var emotions : [Emotions] = [Emotions(velocidade:.high, emotion: .happy, color: #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)),
                            Emotions(velocidade: .low, emotion: .sad, color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)),
                            Emotions(velocidade: .mid, emotion: .angry, color: #colorLiteral(red: 0.8502615817, green: 0.07450980693, blue: 0.02745098062, alpha: 1))]

public var bai : Emotions = emotions.last!

