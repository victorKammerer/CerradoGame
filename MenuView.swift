import SwiftUI
import AVFoundation

struct MenuView: View {
    @AppStorage("pause") var pause: Bool = false
    @AppStorage("sound") var sound: Double = 1.0
    
    var body: some View {
        GeometryReader{ 
            geo in
            ZStack {
                Image("backgroundMenu")
                    .resizable()
                    .blur(radius: 20)
                
                VStack(spacing: 5){
                    Image("title")
                        .resizable()
                        .frame(width: 640, height: 320)
                    NavigationLink(destination: OnboardingView().navigationBarBackButtonHidden(true)) {
                        ZStack {
                            Image("start")
                                .resizable()
                                .frame(width: 320, height: 160)
                        }
                    }
                    NavigationLink(destination: CreditsView().navigationBarBackButtonHidden(true)) {
                        ZStack {
                            Image("credits")
                                .resizable()
                                .frame(width: 320, height: 160)
                        }
                    }
                }
            }
        }.onAppear{
            music(music: "cityOverCloudsByPix")}
    }
}
