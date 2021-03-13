
import UIKit

extension UIResponder {

    func isTesting() -> Bool {
        return NSClassFromString("XCTest") != nil
    }
}
