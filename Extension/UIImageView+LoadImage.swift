
import Nuke
import UIKit

extension UIImageView {

    func setImage(with imageURL: String,
                  placeHolder: UIImage? = R.image.default_thumbnail_gray(),
                  failureImage: UIImage? = R.image.default_thumbnail_gray(),
                  contentMode: UIView.ContentMode? = nil,
                  completion: ImageTask.Completion? = nil) {

        guard let url = URL(string: imageURL) else {
            image = failureImage
            return
        }

        var contentModes: ImageLoadingOptions.ContentModes?
        if let mode = contentMode {
            contentModes = ImageLoadingOptions.ContentModes.init(success: mode, failure: mode, placeholder: mode)
        }

        let loadingOptions = ImageLoadingOptions(placeholder: placeHolder, failureImage: failureImage, contentModes: contentModes)

        let request = ImageRequest(url: url)

        Nuke.loadImage(with: request, options: loadingOptions, into: self, progress: nil, completion: completion)
    }
}
