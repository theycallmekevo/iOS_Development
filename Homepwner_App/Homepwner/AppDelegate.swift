//
//  AppDelegate.swift
//  Homepwner
//
//  Created by Kevin Tran on 6/19/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    //create an instance of itemStore, so we can call saveChanges when app enters background
    let itemStore = ItemStore()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        //upon app launch
        //create a new instance of ImageStore
        let imageStore = ImageStore()
    
        //make the navigation controller the rootViewContoller
        //access the ItemsViewController and set its item store

        let navController = window!.rootViewController as! UINavigationController
        let itemsController = navController.topViewController as! ItemsViewController
        itemsController.itemStore = itemStore
        itemsController.imageStore = imageStore
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        //print(#function)
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        //print(#function)
        //when application enters the background, call the itemStore - saveChanges to save all app changes
        let success = itemStore.saveChanges()
        
        if success {
            print("Saved all of the Items")
        } else {
            print("Could not save any of the items")
        }
        
    }//end of applicationDidEnterBackground

    func applicationWillEnterForeground(_ application: UIApplication) {
        //print(#function)
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        //print(#function)
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        //print(#function)
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

