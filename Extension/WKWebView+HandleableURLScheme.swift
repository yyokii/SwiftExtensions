
import Foundation
import WebKit

extension WKWebView {

    enum URLSchemeType: String {
        case phone = "tel"

        init?(scheme: String?) {
            guard let value = scheme else {
                return nil
            }

            switch value {
            case "tel":
                self = .phone
            default:
                return nil
            }
        }
    }

    static func handleURLScheme(decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {

        let app = UIApplication.shared
        if let url = navigationAction.request.url {
            if navigationAction.targetFrame == nil {
                // target="_blank" の場合はブラウザで開く
                if app.canOpenURL(url) {
                    app.open(url, options: [:], completionHandler: nil)
                    decisionHandler(.cancel)
                    return
                }
            }

            if URLSchemeType(scheme: url.scheme) != nil {
                if app.canOpenURL(url) {
                    app.open(url, options: [:], completionHandler: nil)
                    decisionHandler(.cancel)
                    return
                }
            }

            decisionHandler(.allow)
        }
    }
}
