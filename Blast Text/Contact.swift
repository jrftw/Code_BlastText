import Foundation

struct Contact: Identifiable {
    var id = UUID() // Unique identifier for each contact
    var name: String
    var number: String
    var param1: String // Optional custom parameter 1
    var param2: String // Optional custom parameter 2
}
