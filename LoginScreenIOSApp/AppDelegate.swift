//
//  AppDelegate.swift
//  LoginScreenIOSApp
//
//  Created by Apple on 11/6/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
  
//    let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
//    let viewController = mainStoryboard.instantiateViewController(withIdentifier: "tabBarcontroller") as! UITabBarController
//    UIApplication.shared.keyWindow?.rootViewController = viewController

//     let hashtoken = UserDefaults.standard.object(forKey: "hashToken") as? Bool
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
//        window = UIWindow(frame: UIScreen.main.bounds)
//        
//        guard let islogged = hashtoken else { return true}
//        print(islogged)
//        if islogged == true {
//            let mainboard = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "mainboard")
//            window?.rootViewController = mainboard
//            window?.makeKeyAndVisible()
//        } else {
//            let loginscreen = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "loginscreen")
//            window?.rootViewController = loginscreen
//            window?.makeKeyAndVisible()
//        }
        
        
       
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


}

