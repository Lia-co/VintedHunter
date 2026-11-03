import SwiftUI
import Playgrounds

struct ContentView: View {
    @State private var isPresented = false
    
    var body: some View {
        VStack {
            Button("Mark your hunted point") {
                isPresented = true
            }
            .buttonStyle(.bordered)
            .sheet(isPresented: $isPresented) {
                MomentEntryView()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

#Playground {
    _ = 1 + 2
}
