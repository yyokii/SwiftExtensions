
import Foundation

extension Bundle {

    public var appVersionShort: String {
        if let result = infoDictionary?["CFBundleShortVersionString"] as? String {
            return result
        } else {
            return ""
        }
    }

    public var appVersionLong: String {
        if let result = infoDictionary?["CFBundleVersion"] as? String {
            return result
        } else {
            return ""
        }
    }
}
