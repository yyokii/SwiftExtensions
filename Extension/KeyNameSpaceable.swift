
protocol KeyNameSpaceable {
    func namespaced<T: RawRepresentable>(_ key: T) -> String
}

extension KeyNameSpaceable {
    func namespaced<T: RawRepresentable>(_ key: T) -> String {
        return "\(Self.self).\(key.rawValue)"
    }
}
