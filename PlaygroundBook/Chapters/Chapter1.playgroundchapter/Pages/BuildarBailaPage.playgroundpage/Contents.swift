/*:
 # **Now it’s your turn to create a Dance!**
 
 Create your own dance according to your emotions.
 
 **Do you think you’re ready to join to us at the Dance Academy?!**
 - - -
 **💡Tips:**
 1. Pick the dancer’s color(choose a color that represents better the emotion you will choose later on)
 
 2. Choose the emotion:
 
        emotion = .happy
 
 3. To start dancing change to :
 
        toDance = true
 
 4. Choose the moves velocity:
 
        velocity = .high
 
 5. Choose a scenario for your dancer:
 
        scenario = .dark
 
 6. Don't forget to turn up the sound volume.
 
 While dancing our bodies express emotions, it says what can’t be said in words.
 */

//#-hidden-code
import UIKit
import PlaygroundSupport
import SpriteKit

//#-end-hidden-code
danceColor =  /*#-editable-code*/ #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)/*#-end-editable-code*/
emotion = /*#-editable-code*/.happy/*#-end-editable-code*/
toDance = /*#-editable-code*/false/*#-end-editable-code*/
velocity = /*#-editable-code*/.high/*#-end-editable-code*/
scenario = /*#-editable-code*/.dark/*#-end-editable-code*/
//#-hidden-code
//#-code-completion(everything, hide)
//#-code-completion(identifier, show, emotion)
//#-end-hidden-code
//#-hidden-code
PlaygroundPage.current.liveView = returnSpriteDancer ()
//#-end-hidden-code

