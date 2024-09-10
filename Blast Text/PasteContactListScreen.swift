import SwiftUI

struct PasteContactListScreen: View {
    @Binding var contacts: [Contact] // Contacts array from the ContentView

    var body: some View {
        VStack {
            Text("Paste Contact List")
                .font(.title)
                .padding()

            Text("This feature is not yet implemented.")
                .padding()
                .foregroundColor(.gray)
        }
        .padding()
    }
}
