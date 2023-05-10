import SwiftUI
import AVFoundation

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
                MenuView()
            }.navigationViewStyle(StackNavigationViewStyle())
        }
    }
}
