
import Foundation

public struct Logger {
    private static var dateString: String {
        let date = Date()
        let formatter = DateFormatter()
        formatter.setTemplate(.full)
        return formatter.string(from: date)
    }

    public enum LogLevel: String {
        case debug
        case info
        case error
    }

    public static func debug(file: String = #file, function: String = #function, line: Int = #line, _ message: String = "") {
        printToConsole(logLevel: .debug, file: file, function: function, line: line, message: "デバッグ: \(message)")
    }

    public static func info(file: String = #file, function: String = #function, line: Int = #line, _ message: String = "") {
        printToConsole(logLevel: .info, file: file, function: function, line: line, message: message)
    }

    public static func error(file: String = #file, function: String = #function, line: Int = #line, _ message: String = "") {
        printToConsole(logLevel: .error, file: file, function: function, line: line, message: "エラー: \(message)")
    }

    private static func className(from filePath: String) -> String {
        let fileName = filePath.components(separatedBy: "/").last
        return fileName?.components(separatedBy: ".").first ?? ""
    }

    private static func printToConsole(logLevel: LogLevel, file: String, function: String, line: Int, message: String) {
        #if DEBUG
        print("\(dateString) [\(logLevel.rawValue.uppercased())] \(className(from: file)).\(function) #\(line): \(message)")
        #endif
    }
}
