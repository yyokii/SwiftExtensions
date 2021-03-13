//
//  UserDefaults+Base.swift
//  FJG
//
//  Created by yo_higashihara on 2020/10/25.
//

import Foundation

enum UserDefaultKeys: String {
    case accessToken
}

protocol KeyValueStore: KeyNameSpaceable {

    func registerDefaultValue()

    func set(_ value: String, forKey key: UserDefaultKeys)

    func set(_ value: Int, forKey key: UserDefaultKeys)

    func set(_ value: [Any], forKey key: UserDefaultKeys)

    func set(_ value: Bool, forKey key: UserDefaultKeys)

    func removeObject(forKey key: UserDefaultKeys)

    @discardableResult
    func string(forKey key: UserDefaultKeys) -> String?

    @discardableResult
    func int(forKey key: UserDefaultKeys) -> Int?

    @discardableResult
    func array(forKey key: UserDefaultKeys) -> [Any]?

    @discardableResult
    func bool(forKey key: UserDefaultKeys) -> Bool
}

extension UserDefaults: KeyValueStore {

    func registerDefaultValue() {
        register(
            defaults: []
        )
    }

    func set(_ value: String, forKey key: UserDefaultKeys) {
        let key = namespaced(key)
        self.set(value, forKey: key)
    }

    func set(_ value: Int, forKey key: UserDefaultKeys) {
        let key = namespaced(key)
        self.set(value, forKey: key)
    }

    func set(_ value: [Any], forKey key: UserDefaultKeys) {
        let key = namespaced(key)
        self.set(value, forKey: key)
    }

    func set(_ value: Bool, forKey key: UserDefaultKeys) {
        let key = namespaced(key)
        self.set(value, forKey: key)
    }

    func removeObject(forKey key: UserDefaultKeys) {
        let key = namespaced(key)
        self.removeObject(forKey: key)
    }

    @discardableResult
    func string(forKey key: UserDefaultKeys) -> String? {
        let key = namespaced(key)
        return self.string(forKey: key)
    }

    @discardableResult
    func int(forKey key: UserDefaultKeys) -> Int? {
        let key = namespaced(key)
        return self.integer(forKey: key)
    }

    @discardableResult
    func array(forKey key: UserDefaultKeys) -> [Any]? {
        let key = namespaced(key)
        return self.array(forKey: key)
    }

    @discardableResult
    func bool(forKey key: UserDefaultKeys) -> Bool {
        let key = namespaced(key)
        return self.bool(forKey: key)
    }
}
