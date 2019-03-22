import Foundation
import UIKit
import SpriteKit

public enum Emotion {
    case Angry
    case Happy
    case Sad
}

public enum Velocidade {
    case Baixa
    case Media
    case Alta
}

public class Configurador {
    
    public var velocidade : [Velocidade] = [.Baixa, .Media, .Alta]
    public var emotions: [Emotion] = [.Sad, .Happy, .Angry]
    
    public var dancerColor: UIColor! = #colorLiteral(red: 0.3269047016, green: 0.8330940693, blue: 0.9686274529, alpha: 1)
    
    public init() { }
    
}


