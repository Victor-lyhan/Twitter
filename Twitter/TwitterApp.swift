//
//  TwitterApp.swift
//  Twitter
//
//  Created by Victor Han on 2022/8/7.
//

import SwiftUI
import Firebase

@main
struct TwitterApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                LogInView()
            }
        }
    }
}
