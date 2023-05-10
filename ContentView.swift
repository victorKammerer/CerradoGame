import SwiftUI
import SpriteKit

struct ContentView: View {
    
    @AppStorage("showFinal") var showFinal: Bool = false
    @State var viewUp = true
    
    var scene: SKScene {
        let scene = GameScene()
        scene.size = CGSize(width: 1920, height: 1280)
        scene.scaleMode = .aspectFill
        
        return scene
    }
    
    var body: some View {
        GeometryReader{
            geo in
            ZStack {
                SpriteView(scene: scene)
                    .ignoresSafeArea()
                VStack{
                    HStack{
                        Spacer()
                        NavigationLink(destination: PauseView().navigationBarBackButtonHidden(true)) {
                            ZStack {
                                Image("leaveButton")
                                    .resizable()
                                    .frame(width: 80, height: 80)
                                Image("pause")
                                    .resizable()
                                    .frame(width: 32, height: 32)
                            }
                        }
                        .frame(width: geo.size.width/14, height: geo.size.height/10)
                        .padding(.trailing, geo.size.width / 1.2)
                        .padding(.top, geo.size.width / 25)
                    }
                    Spacer()
                    NavigationLink("", destination: FinalView().navigationBarBackButtonHidden(true), isActive: $showFinal)
                }
                if viewUp {
                    Color(.black).ignoresSafeArea().onAppear(){
                        DispatchQueue.main.asyncAfter(deadline: .now()) {
                            viewUp = false
                        }
                    }
                }
            }
        }
    }
}
