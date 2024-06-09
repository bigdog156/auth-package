// The Swift Programming Language
// https://docs.swift.org/swift-book

import Supabase

public class AuthModule {
    static private var shareAuthModule: AuthModule = {
        let auth = AuthModule.init()
        return auth
    }()
    var idKey: String = "Hello"
    
    private init() {
        print("Init AuthModule")
        self.idKey = "Success"
    }
    
    class func shared() -> AuthModule {
        return shareAuthModule
    }
}
