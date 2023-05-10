import SwiftUI
import SpriteKit
import AVFoundation

class GameScene: SKScene {
    
    @AppStorage("pause") var pause: Bool = false
    @AppStorage("sound") var sound: Double = 1.0
    @AppStorage("showFinal") var showFinal: Bool = false
    
    var clickBlocked = false
    
    var animais = 0
    
    var manny = SKSpriteNode()
    var mannyText = SKLabelNode()
    
    var pintado = SKSpriteNode()
    var pintadoText = SKLabelNode()
    
    var army = SKSpriteNode()
    var armyText = SKLabelNode()
    
    var andy = SKSpriteNode()
    var andyText = SKLabelNode()
    
    var chaco = SKSpriteNode()
    var chacoText = SKLabelNode()
    
    var lobo = SKSpriteNode()
    var jaguar = SKSpriteNode()
    var tatu = SKSpriteNode()
    var tamandua = SKSpriteNode()
    var aguia = SKSpriteNode()
    
    var chatLabel = SKLabelNode()
    var textIsShowing = true
    var interationDisabled = false
    
    var background = SKSpriteNode()
    
    var backgroundMusic = SKAudioNode()
    var audioPlayer = AVAudioPlayer()
    
    override func didMove(to view: SKView) {
        setupBackground()
        setupAnimais()
    }
    
    override func update(_ currentTime: TimeInterval) {
        
    }

    func setupBackground() {
        background = SKSpriteNode(imageNamed: "gameBackground")
        background.texture!.filteringMode = SKTextureFilteringMode.nearest
        background.size = CGSize(width: 1920, height: 1280)
        background.position = CGPoint(x: self.frame.width / 2, y: self.frame.height / 2)
        
        addChild(background)
    }
}

