import SwiftUI

struct PauseView: View {
    
    @AppStorage("pause") var pause: Bool = false
    @AppStorage("sound") var sound: Double = 0.5
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        GeometryReader{
            geo in
            ZStack {
                Image("backgroundCredits")
                    .resizable()
                    .ignoresSafeArea()
                    .blur(radius: 30)
                VStack{
                    Button (action: {
                        presentation.wrappedValue.dismiss()
                        pause = false
                    }) {
                        ZStack {
                            Image("btg")
                                .resizable()
                                .frame(width: 320, height: 160)
                        }
                    }
                    Button (action: {
                        NavigationUtil.popToRootView()
                        pause = false
                    }) {
                        VStack{
                            Image("btm")
                                .resizable()
                                .frame(width: 320, height: 160)
                        }
                    }
                    .frame(width: geo.size.width/2.7, height: geo.size.height/7)
                } 
            }
        }
        .onAppear() {
            pause = true
        }
    }
}
