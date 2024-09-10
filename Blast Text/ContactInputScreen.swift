import SwiftUI

struct ContactInputScreen: View {
    @Binding var contacts: [Contact] // Contacts array from the ContentView
    @State private var name: String = "" // Temporary state for contact's name
    @State private var number: String = "" // Temporary state for contact's number
    @State private var showMessageScreen = false // Toggle to show the message screen

    var body: some View {
        VStack {
            Text("Enter Contact Information")
                .font(.title)
                .padding()

            TextField("Enter Name", text: $name)
                .padding()
                .border(Color.gray, width: 1)

            TextField("Enter Number", text: $number)
                .padding()
                .border(Color.gray, width: 1)

            // Button to add the contact to the list
            Button("Add Contact") {
                if !name.isEmpty && !number.isEmpty {
                    let newContact = Contact(name: name, number: number, param1: "", param2: "")
                    contacts.append(newContact)
                    name = ""
                    number = ""
                }
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(5)

            // Display the added contacts
            List(contacts) { contact in
                Text("\(contact.name) - \(contact.number)")
            }

            // Button to navigate to the message screen
            Button("Next") {
                showMessageScreen = true
            }
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(5)

        }
        .padding()
        .sheet(isPresented: $showMessageScreen) {
            MessageScreen(contacts: $contacts) // Navigate to the message screen
        }
    }
}
