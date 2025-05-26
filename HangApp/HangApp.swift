import SwiftUI

@main
struct HangApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                Tab("About", systemImage: "person") {
                    Text("About")
                }
                Tab("Issues", systemImage: "book") {
                    IssuesView()
                }
            }
        }
    }
}
