import SwiftUI

struct FinalView: View {
    
    var body: some View {
        GeometryReader {
            geo in
            ZStack {
                Image("onboardingBG")
                    .resizable()
                Image("lobo")
                    .position(CGPoint(x: 200, y: 700))
                Image("jaguar")
                    .position(CGPoint(x: 1179, y: 450))
                Image("tatu")
                    .position(CGPoint(x: 700, y: 900))
                Image("tamandua")
                    .position(CGPoint(x: 1198, y: 800))
                Image("aguiawings")
                    .resizable()
                    .frame(width: 480, height: 120)
                    .position(CGPoint(x: 400, y: 200))
                NavigationLink(destination: CreditsView().navigationBarBackButtonHidden(true))  {
                    ZStack {
                        Image("pintado")
                        
                        Text("Hey, i forgot to tell you\nI'm pretty good at climbing trees too!\nAnyways, we're back at home\nthank you for helping us, remember to\nAlways support and preserve biodiversity!")
                            .foregroundColor(.black)
                            .minimumScaleFactor(0.01)
                            .bold()
                            .padding(.leading, geo.size.width / 9)
                            .padding(.top, geo.size.width / 27)
                    }
                }
            }
        }
    }
}
