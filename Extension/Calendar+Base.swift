
import Foundation

extension TimeZone {

    static let japan = TimeZone(identifier: "Asia/Tokyo")!
}

extension Locale {

    static let japan = Locale(identifier: "ja_JP")
}

extension Calendar {

    static var appCalendar: Calendar {
        var calendar = Calendar(identifier: .gregorian)
        calendar.timeZone = .japan
        calendar.locale   = .japan
        return calendar
    }
}
