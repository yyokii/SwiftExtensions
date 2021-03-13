
import Foundation

extension Date {
    /// en_US_POSIX 形式でStringからDateを生成
    static func dateOfEnUSPOSIX(from dateString: String, format: DateFormatter.Template) -> Date? {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.dateFormat = format.rawValue
        return formatter.date(from: dateString)
    }
}
