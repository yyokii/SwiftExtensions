
import UIKit
import Nuke

extension UIButton: Nuke_ImageDisplaying {
    public func nuke_display(image: PlatformImage?) {
        self.setImage(image, for: .normal)
    }
}

extension UIButton {
    func setImage(with imageURL: String,
                  placeHolder: UIImage? = nil,
                  failureImage: UIImage? = nil,
                  contentMode: UIView.ContentMode? = nil) {

        guard let url = URL(string: imageURL) else {
            return
        }

        var contentModes: ImageLoadingOptions.ContentModes?
        if let mode = contentMode {
            contentModes = ImageLoadingOptions.ContentModes.init(success: mode, failure: mode, placeholder: mode)
        }

        let loadingOptions = ImageLoadingOptions(placeholder: placeHolder, failureImage: failureImage, contentModes: contentModes)

        let request = ImageRequest(url: url)

        Nuke.loadImage(with: request, options: loadingOptions, into: self, progress: nil, completion: nil)
    }
}
