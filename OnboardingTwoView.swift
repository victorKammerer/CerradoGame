import SwiftUI

struct OnboardingTwoView: View {
    
    var body: some View {
        GeometryReader{ 
            geo in
            ZStack{
                Image("onboardingBG")
                    .resizable()
                ZStack{
                    Image("mannymx")
                    Text("We're all endangered species,\nand that's the only place on earth we live\nAll you have to do is click on us\nthis will help us to get back")
                        .foregroundColor(.black)
                        .minimumScaleFactor(0.01)
                        .bold()
                        .padding(.leading, geo.size.width / 8)
                        .padding(.top, geo.size.width / 50)
                    NavigationLink(destination: ContentView().navigationBarBackButtonHidden(true)) {
                        Image("nextButton")
                            .resizable()
                            .frame(width: 48, height: 48)
                    }.padding(.leading, geo.size.width / 3)
                        .padding(.top, geo.size.height / 9.5)
                }.padding(.top, geo.size.width / 2.5 )
            } 
        }
    }
    
}


