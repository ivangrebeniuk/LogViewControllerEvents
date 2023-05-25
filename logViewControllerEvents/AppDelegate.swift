//
//  AppDelegate.swift
//  logViewControllerEvents
//
//  Created by Иван Гребенюк on 20.05.2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        #if DEBUG
        print("Application moved from 'not running' to 'foreground(inactive)' state into", #function)
        #endif
        return true
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        #if DEBUG
        print("Application moved from 'foreground(active)' state to 'suspended' into", #function)
        #endif
    }
    
    func applicationDidBecomeActive(_ application:UIApplication) {
        #if DEBUG
        print("Application moved from 'foreground(inactive)' to 'foreground(active)' state into", #function)
        #endif
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        #if DEBUG
        print("Application moved from 'foreground(active)' state to 'foreground(inactive)' into", #function)
        #endif
    }

    
    func applicationDidEnterBackground(_ application: UIApplication) {
        #if DEBUG
        print(UIApplication.didEnterBackgroundNotification)
        print("Application moved from 'foreground(active)' state to 'backgtound' into", #function)
        #endif
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


}

