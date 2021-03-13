
import Foundation

extension JSONDecoder {
    convenience init(type: JSONDecoder.KeyDecodingStrategy) {
        self.init()
        keyDecodingStrategy = type
    }
}
