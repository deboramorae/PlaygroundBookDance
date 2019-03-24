/*:
 # **Agora é sua vez de criar uma Dança!**
 
 Crie sua própria dance de acordo com as emoções.
 
 **Será se você está pronto para entrar na Academia?!**
 - - -
 **💡Dicas:**
 1. Escolha uma cor que do bailarino que represente a emoção a ser escolhida:
 
        danceColor = .blue (ou click no quadrado da color)
 
 2. Escolha a emoção :
 
        emotion = .happy
 
 3. Para fazê-lo dancar mude para :
 
        toDance = true
 
 4. Escolha a velocidade dos passos:
 
        velocity = .alta
 
 5. Escolha um cenário para o seu bailarino:
 
        scenario = .dark
 */

//#-hidden-code
import UIKit
import PlaygroundSupport
import SpriteKit

//#-end-hidden-code
danceColor =  /*#-editable-code*/ #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)/*#-end-editable-code*/
emotion = /*#-editable-code*/.happy/*#-end-editable-code*/
toDance = /*#-editable-code*/false/*#-end-editable-code*/
velocity = /*#-editable-code*/.alta/*#-end-editable-code*/
scenario = /*#-editable-code*/.dark/*#-end-editable-code*/
//#-hidden-code
//#-code-completion(everything, hide)
//#-code-completion(identifier, show, emotion)
//#-end-hidden-code
//#-hidden-code
PlaygroundPage.current.liveView = returnSpriteDancer ()
//#-end-hidden-code

