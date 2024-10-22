//
//  AppDelegate.swift
//  TestSDKIntegration
//
//  Created by Testpress on 19/09/24.
//

import UIKit
import CourseKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        TestpressCourse.shared.initialize(withToken: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6NjA2NzQsInVzZXJfaWQiOjYwNjc0LCJpbnN0aXR1dGUiOjczOSwiaWQiOjYwNjc0LCJleHAiOjE3MjkxNTI3NTYsImVtYWlsIjoicHJ1dGhpdmlyYWpAdGVzdHByZXNzLmluIn0.8uON7GGcGpsz38v8rJvCy1CwNz8udjMIkINrGdY1ExE", subdomain: "lmsdemo", primaryColor: "#2196F3")
        customizeAppearance()
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }

    private func customizeAppearance() {
        let navBarAppearance = UINavigationBar.appearance()
        navBarAppearance.isTranslucent = false
        navBarAppearance.backgroundColor = TestpressCourse.shared.primaryColor
        navBarAppearance.barTintColor = TestpressCourse.shared.primaryColor
        UIBarButtonItem.appearance().tintColor = Colors.getRGB(Colors.PRIMARY_TEXT)
        navBarAppearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor: Colors.getRGB(Colors.PRIMARY_TEXT)]

        if !UIUtils.isiPad() {
            UITabBarItem.appearance().titlePositionAdjustment = UIOffset(horizontal: 0, vertical: -5)
        }
    }
}

