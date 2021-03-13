
import Foundation

extension URL {

    /// 現状のクエリパラメーター設定状況を取得し、引数で与れられたクエリパラメーター情報を追加する
    func appending(queryItem: String, value: String?) -> URL {

        guard var urlComponents = URLComponents(string: absoluteString) else { return absoluteURL }

        var queryItems: [URLQueryItem] = urlComponents.queryItems ??  []

        let queryItem = URLQueryItem(name: queryItem, value: value)
        queryItems.append(queryItem)
        urlComponents.queryItems = queryItems

        return urlComponents.url!
    }
}
