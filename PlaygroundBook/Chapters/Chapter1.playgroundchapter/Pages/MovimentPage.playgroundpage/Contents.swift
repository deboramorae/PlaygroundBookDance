/*:
 # **Espero que não esteja cansado porque hoje vamos dançar muito!**
 
 Na dança quando queremos passar um sentimento usamos algumas variáveis para ajudar : Expressão facial, velocidade do movimento, posicionamento no palco.
 
 Uns exemplos são:
 
 **😄Happy:** Costuma-se usar movimentos mais rápidos e passos mais abertos.
 
 **☹️Sad:** Costuma-se usar movimentos em velocidade média e passos com mais força.
 
 **😡Angry:** Costuma-se usar movimenos mais lentos e passos mais contrários.
 
 - - -
 **💡Dicas:**
 1. Escolha uma emoção:
 
        emotion = .happy
 
 2. Para fazê-lo dancar mude para :
 
        toDance = true
 
 3. Click em Run My Code
 */

//#-hidden-code
import UIKit
import PlaygroundSupport
import SpriteKit
//#-end-hidden-code
emotion = /*#-editable-code*/.happy/*#-end-editable-code*/
toDance = /*#-editable-code*/false/*#-end-editable-code*/
//#-hidden-code
//#-code-completion(everything, hide)
//#-code-completion(identifier, show, emotion)
//#-end-hidden-code
//#-hidden-code
PlaygroundPage.current.liveView =  returnSprite()
//#-end-hidden-code
//: [Click para destruir sua proporia experincia](@next)

