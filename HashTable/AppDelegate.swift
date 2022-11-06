//
//  AppDelegate.swift
//  ISpy
//
//  Created by Артём Зыков on 11.02.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        var hashTable = HashTable<String, String>()

        hashTable["firstName"] = "Steve"
        hashTable["lastName"] = "Jobs"
        hashTable.add(MyInteger())
        hashTable["hobbies"] = "Programming Swift"

        print(hashTable)
        print(hashTable.debugDescription)

        let x = hashTable["firstName"]
        hashTable["firstName"] = "Tim"

        let y = hashTable["firstName"]
        hashTable["firstName"] = nil

        let z = hashTable["firstName"]

        print(hashTable)
        print(hashTable.debugDescription)
        
        
        
        
        
        
        
        return true
    }

    // MARK: UISceneSession Lifecycle
    @available(iOS 13.0, *)
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    
    @available(iOS 13.0, *)
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

