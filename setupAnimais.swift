import SpriteKit

extension GameScene {
    
    func setupAnimais() {
        lobo = SKSpriteNode(imageNamed: "lobo")
        lobo.size = CGSize(width: 284, height: 238)
        lobo.position = CGPoint(x: lobo.frame.width/2 + 1400, y: lobo.frame.height/2 + 100)
        lobo.name = "lobo"
        
        jaguar = SKSpriteNode(imageNamed: "jaguar")
        jaguar.size = CGSize(width: 110, height: 92)
        jaguar.position = CGPoint(x: jaguar.frame.width/2 + 579, y: jaguar.frame.height/2 + 480)
        jaguar.name = "jaguar"
        
        tatu = SKSpriteNode(imageNamed: "tatu")
        tatu.size = CGSize(width: 165, height: 65)
        tatu.position = CGPoint(x: tatu.frame.width/2 + 1050, y: tatu.frame.height/2 + 280)
        tatu.name = "tatu"
        
        tamandua = SKSpriteNode(imageNamed: "tamandua")
        tamandua.size = CGSize(width: 90, height: 60)
        tamandua.position = CGPoint(x: tamandua.frame.width/2 + 217.5, y: tamandua.frame.height/2 + 340)
        tamandua.name = "tamandua"
        
        aguia = SKSpriteNode(imageNamed: "aguia")
        aguia.size = CGSize(width: 150, height: 150)
        aguia.position = CGPoint(x: aguia.frame.width/2 + 130, y: aguia.frame.height/2 + 697)
        aguia.name = "aguia"
        
        manny = SKSpriteNode(imageNamed: "manny")
        manny.size = CGSize(width: 640, height: 240)
        manny.position = CGPoint(x: 990, y: 200)
        manny.name = "manny"
        
        mannyText = SKLabelNode(text: "Hey, you again, thanks for helping me\nI'm Manny, the Maned Wolf I live in Brazil\nAnd have really long legs for a Wolf")
        mannyText.fontSize = 22
        mannyText.fontColor = .black
        mannyText.numberOfLines = 3
        mannyText.position = CGPoint(x: 1080, y: 150)
        mannyText.name = "manny"
        
        pintado = SKSpriteNode(imageNamed: "pintado")
        pintado.size = CGSize(width: 640, height: 240)
        pintado.position = CGPoint(x: 990, y: 200)
        pintado.name = "pintado"
        
        pintadoText = SKLabelNode(text: "Oh, you found me!! I'm pintado, a Jaguar!!\nI have a really strong bite\nAnd I'm a really good Swimmer!")
        pintadoText.fontSize = 22
        pintadoText.fontColor = .black
        pintadoText.numberOfLines = 3
        pintadoText.position = CGPoint(x: 1090, y: 150)
        pintadoText.name = "pintado"
        
        army = SKSpriteNode(imageNamed: "army")
        army.size = CGSize(width: 640, height: 240)
        army.position = CGPoint(x: 990, y: 200)
        army.name = "army"
        
        armyText = SKLabelNode(text: "Hi, thanks for picking me... heh\nMy name is Army, the Giant Armadillo\nThat's impressive you actually catch me")
        armyText.fontSize = 22
        armyText.fontColor = .black
        armyText.numberOfLines = 3
        armyText.position = CGPoint(x: 1090, y: 150)
        armyText.name = "army"
        
        andy = SKSpriteNode(imageNamed: "anty")
        andy.size = CGSize(width: 640, height: 240)
        andy.position = CGPoint(x: 990, y: 200)
        andy.name = "andy"
        
        andyText = SKLabelNode(text: "Yo!! It's me, Anty!! I'm a GIANT Anteater\nThe largest of all Anteaters and yes...\nYou guessed it I just LOVE eating ants")
        andyText.fontSize = 22
        andyText.fontColor = .black
        andyText.numberOfLines = 3
        andyText.position = CGPoint(x: 1080, y: 150)
        andyText.name = "andy"
        
        chaco = SKSpriteNode(imageNamed: "chaco")
        chaco.size = CGSize(width: 640, height: 240)
        chaco.position = CGPoint(x: 990, y: 200)
        chaco.name = "chaco"
        
        chacoText = SKLabelNode(text: "I'm a Crowned Solitary Eagle\nbut sometimes, they call me Chaco...\nI like to be alone, thanks anyway")
        chacoText.fontSize = 22
        chacoText.fontColor = .black
        chacoText.numberOfLines = 3
        chacoText.position = CGPoint(x: 1080, y: 150)
        chacoText.name = "chaco"
        
        addChild(lobo)
        addChild(jaguar)
        addChild(tatu)
        addChild(tamandua)
        addChild(aguia)
    }
}


