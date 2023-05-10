import SpriteKit

extension GameScene {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch: UITouch in touches {
            let location = touch.location(in: self)
            let touchedNode = atPoint(location)
            let nodeName = touchedNode.name
            if clickBlocked == false {
                if nodeName == "lobo" {
                    lobo.removeFromParent()
                    print(animais)
                    clickBlocked = true
                    setupManny()
                } else if nodeName == "jaguar"{
                    jaguar.removeFromParent()
                    print(animais)
                    clickBlocked = true
                    setupPintado()
                } else if nodeName == "tatu"{
                    tatu.removeFromParent()
                    print(animais)
                    clickBlocked = true
                    setupArmy()
                } else if nodeName == "tamandua"{
                    tamandua.removeFromParent()
                    print(animais)
                    clickBlocked = true
                    setupAndy()
                } else if nodeName == "aguia"{
                    aguia.removeFromParent()
                    print(animais)
                    clickBlocked = true
                    setupChaco()
                }
            }
            
            if nodeName == "manny"{
                manny.removeFromParent()
                mannyText.removeFromParent()
                animais += 1
                print("manny")
                clickBlocked = false
            } else if nodeName == "pintado"{
                pintado.removeFromParent()
                pintadoText.removeFromParent()
                animais += 1
                print("pintado")
                clickBlocked = false
            }
            else if nodeName == "army"{
                army.removeFromParent()
                armyText.removeFromParent()
                animais += 1
                print("army")
                clickBlocked = false
            }
            else if nodeName == "andy"{
                andy.removeFromParent()
                andyText.removeFromParent()
                animais += 1
                print("andy")
                clickBlocked = false
            }
            else if nodeName == "chaco"{
                chaco.removeFromParent()
                chacoText.removeFromParent()
                animais += 1
                print("chaco")
                print(animais)
                clickBlocked = false
            }
            if animais == 5 {
                showFinal = true
                animais = 0
            }
        }
    }
    
    func setupManny() {
        addChild(manny)
        addChild(mannyText)
    }
    
    func setupPintado() {
        addChild(pintado)
        addChild(pintadoText)
    }
    
    func setupArmy() {
        addChild(army)
        addChild(armyText)
    }
    
    func setupAndy() {
        addChild(andy)
        addChild(andyText)
    }
    
    func setupChaco() {
        addChild(chaco)
        addChild(chacoText)
    }
}

