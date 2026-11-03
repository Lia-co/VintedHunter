import SwiftUI
import SwiftData


@main
struct MyApp: App {
    let dataContainer = DataContainer()
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(dataContainer)
        }
        .modelContainer(dataContainer.modelContainer)
    }
}
