
import UIKit

extension UIView {

    func loadNib() {
        guard let view = Bundle(for: type(of: self)).loadNibNamed(String(describing: type(of: self)), owner: self, options: nil)?.first as? UIView else { return }
        view.frame = bounds
        addSubview(view)
    }
}
