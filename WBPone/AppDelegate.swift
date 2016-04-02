//
//  AppDelegate.swift
//  WBPone
//
//  Created by SN on 16/4/1.
//  Copyright © 2016年 Snow. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        configParse()
        
        
        //Check if user exists and logged in
        if let user = UserInfo.currentUser() {
            if user.authenticated {
                print("user exists and logged in", terminator: "")
                
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let mainPage = storyboard.instantiateViewControllerWithIdentifier("HomePage")
                window?.rootViewController = mainPage
            }
        }else {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let loginPage = storyboard.instantiateViewControllerWithIdentifier("LoginPage")
            window?.rootViewController = loginPage
        }

        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

    
    func configParse() {
        // mongodb://wbpone:wbpone@ds011840.mlab.com:11840/wbpone_database
        
        
        
        //        // 正式
        //        Parse.setApplicationId(
        //            "muXAN7jsbTmpBEJUN7L8UvoMDNttYZO5uvTk9EPX",
        //            clientKey: "lbjg4s5L0UVS6a1nxFL2CrS1bN7K7yOrXXwfKFPL")
        
        
        //        // 测试
        //        Parse.setApplicationId(
        //            "TmkORHOIIl7FBry3RwIi5lvzn33stm1avJ59RSyn",
        //            clientKey: "h0wCRUwrkmTg4jbB6KKGwfCNXzRJ25vSZJ6vyxwc")
        
        
        
        let config = ParseClientConfiguration(block: {
            (ParseMutableClientConfiguration) -> Void in
            
            ParseMutableClientConfiguration.applicationId = "muXAN7jsbTmpBEJUN7L8UvoMDNttYZO5uvTk9EPX"
            ParseMutableClientConfiguration.clientKey = "lbjg4s5L0UVS6a1nxFL2CrS1bN7K7yOrXXwfKFPL"
            ParseMutableClientConfiguration.server = "https://wbpone.herokuapp.com/parse";
        })
        
        Parse.initializeWithConfiguration(config)
    }

}

