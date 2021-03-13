
import Foundation

extension DateFormatter {
    // テンプレートの定義
    enum Template: String {
        case date = "yMd"     // 2017/1/1
        case time = "Hms"     // 12:39:22
        case full = "yMdkHms" // 2017/1/1 12:39:22
        case onlyHour = "k"   // 17時
        case era = "GG"       // "西暦" (default) or "平成" (本体設定で和暦を指定している場合)
        case weekDay = "EEEE" // 日曜日
        case fullWithTimeZone = "yyyy-MM-dd'T'HH:mm:ssZ" // 2020-12-04T16:16:09+09:00
        case ISO8601withFractionalSeconds = "yyyy-MM-dd'T'HH:mm:ss.sssZ"
    }

    func setTemplate(_ template: Template) {
        // optionsは拡張用の引数だが使用されていないため常に0
        dateFormat = DateFormatter.dateFormat(fromTemplate: template.rawValue, options: 0, locale: .current)
    }
}
