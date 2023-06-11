
import Foundation

final class OAuth2TokenStorage {
    let tokenKey = "token"
    var token: String? {
        set {
            UserDefaults.standard.set(newValue, forKey: tokenKey)
        }
        get {
            UserDefaults.standard.string(forKey: tokenKey)
        }
    }
}
