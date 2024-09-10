import SwiftUI

@main
struct Blast_TextApp: App {
    @State private var contacts: [Contact] = [] // Global state to manage contacts

    var body: some Scene {
        WindowGroup {
            ContentView(contacts: $contacts) // Start with the ContentView
                .frame(minWidth: 600, idealWidth: 800, minHeight: 400, idealHeight: 600) // Set window size
        }
    }
}
