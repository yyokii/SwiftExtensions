
import UIKit

protocol MessageShowable {
    func showErrorMessageView(with error: Error, handler: ((UIAlertAction) -> Void)?)
    func showForceUpdateAlert(url: URL)
    func showOptionalUpdateAlert(url: URL)
}

extension MessageShowable where Self: UIViewController {

    func showErrorMessageView(with error: Error, handler: ((UIAlertAction) -> Void)? = nil) {
        #warning("未実装")
    }

    func showForceUpdateAlert(url: URL) {
        #warning("未実装")
    }

    func showOptionalUpdateAlert(url: URL) {
        #warning("未実装")
    }
}
