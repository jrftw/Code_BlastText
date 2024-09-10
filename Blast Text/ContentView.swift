import SwiftUI

struct ContentView: View {
    @Binding var contacts: [Contact] // Contacts array passed from the app
    @State private var showManualEntryScreen = false // State to toggle manual entry screen
    @State private var showPasteContactScreen = false // State to toggle paste contact screen

    var body: some View {
        VStack {
            Text("Welcome to Blast Text")
                .font(.largeTitle)
                .padding()

            // Button to manually enter contacts
            Button("Enter Contacts Manually") {
                showManualEntryScreen = true
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(5)

            // Button to paste a contact list
            Button("Paste Contact List") {
                showPasteContactScreen = true
            }
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(5)
        }
        .padding()
        .sheet(isPresented: $showManualEntryScreen) {
            ContactInputScreen(contacts: $contacts) // Navigate to manual entry screen
        }
        .sheet(isPresented: $showPasteContactScreen) {
            PasteContactListScreen(contacts: $contacts) // Navigate to paste list screen
        }
    }
}
