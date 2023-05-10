import SwiftUI

struct CreditsView: View {
    
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        GeometryReader {
            geo in
            ZStack{
                Color(.black)
                Image("backgroundCredits")
                    .resizable()
                    .blur(radius: 10)
                    .ignoresSafeArea()
                
                VStack {
                    Image("creditsTitle")
                        .resizable()
                        .frame(width: 900, height: 200)
                    Image("creditsText")
                        .resizable()
                        .frame(width: 900, height: 200)
                }
                
                Button (action: { NavigationUtil.popToRootView()}){
                    ZStack {
                        Image("leaveButton")
                            .resizable()
                            .frame(width: 80, height: 80)
                        Image("x")
                            .resizable()
                            .frame(width: 32, height: 32)
                    }
                }.position(CGPoint(x: 30.0, y: 110.0))
                    .padding(.leading, geo.size.width / 20)
            }
        }
    }
}


