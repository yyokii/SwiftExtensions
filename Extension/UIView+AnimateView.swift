
import UIKit

extension UIView {

    /// viewをアニメーション付きで追加
    func animateAddSubView(addTargetView view: UIView, completion: ((Bool) -> Void)?) {
        UIView.transition(with: self, duration: 0.25, options: [.transitionCrossDissolve], animations: {
            self.addSubview(view)
        }, completion: completion)
    }

    /// viewをアニメーション付きで削除
    func animateRemoveView(completion: ((Bool) -> Void)?) {
        UIView.transition(with: self, duration: 0.25, options: [.transitionCrossDissolve], animations: {
            self.alpha = 0.0
        }, completion: { _ in
            self.removeFromSuperview()
            self.alpha = 1.0
        })
    }
}
