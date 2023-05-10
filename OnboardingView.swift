import SwiftUI

struct OnboardingView: View {
    
    var body: some View {
        GeometryReader{ 
            geo in
            ZStack{
                Image("onboardingBG")
                    .resizable()
                ZStack{
                    Image("mannymx")
                    Text("Hey, could you help me?\nHere is my home, the brazilian savanna.\nMe and my friends got a bit lost\nand we ended up in the city")
                        .foregroundColor(.black)
                        .minimumScaleFactor(0.01)
                        .bold()
                        .padding(.leading, geo.size.width / 9)
                        .padding(.top, geo.size.width / 50)
                    NavigationLink(destination: OnboardingTwoView().navigationBarBackButtonHidden(true)) {
                        Image("nextButton")
                            .resizable()
                            .frame(width: 48, height: 48)
                    }.padding(.leading, geo.size.width / 3    )
                        .padding(.top, geo.size.height / 9.5)
                }.padding(.top, geo.size.width / 2.5 )
            } 
        }
    }
    
}
