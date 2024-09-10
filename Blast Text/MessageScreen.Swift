import SwiftUI

struct MessageScreen: View {
    @Binding var contacts: [Contact]
    @State private var messageTemplate: String = "Hey {name}, how are you?"

    var body: some View {
        VStack {
            Text("Compose Message")
                .font(.title)
                .padding()

            TextField("Enter message template", text: $messageTemplate)
                .padding()
                .border(Color.gray, width: 1)
                .padding()

            Button(action: {
                sendMessages()
            }) {
                Text("Send Messages")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(5)
            }
            .padding()
        }
    }

    func sendMessages() {
        for contact in contacts {
            let personalizedMessage = messageTemplate.replacingOccurrences(of: "{name}", with: contact.name)
            print("Sending message: \(personalizedMessage) to \(contact.number)")
        }
    }
}
