import Foundation
import AVFoundation
import MediaPlayer
import SwiftUI

var player: AVAudioPlayer!

func music(music: String) {
    let url = Bundle.main.url(forResource: music, withExtension: "wav")
    
    guard url != nil else {
        return
    }
    
    do {
        
        player = try AVAudioPlayer(contentsOf: url!)
        player.volume = 0.5
        player.play()
        player.numberOfLoops = 1
        
    } catch {
        print("error")
    }
}
