import Foundation

func sendAppleScriptMessage(to number: String, message: String) {
    let appleScript = """
    tell application "Messages"
        send "\(message)" to buddy "\(number)" of service "E:"
    end tell
    """
    
    var error: NSDictionary?
    if let scriptObject = NSAppleScript(source: appleScript) {
        scriptObject.executeAndReturnError(&error)
    }
    
    if let error = error {
        print("AppleScript error: \(error)")
    }
}
