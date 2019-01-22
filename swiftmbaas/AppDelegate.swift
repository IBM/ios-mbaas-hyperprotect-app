//
//  AppDelegate.swift
//  MySampleApp
//

import UIKit
import BMSCore
import BMSPush





@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        let myBMSClient = BMSClient.sharedInstance
        myBMSClient.initialize(bluemixRegion: BMSClient.Region.usSouth)
        myBMSClient.requestTimeout = 10.0 // seconds

        

        if let contents = Bundle.main.path(forResource:"BMSCredentials", ofType: "plist"), let dictionary = NSDictionary(contentsOfFile: contents) {
        	let push = BMSPushClient.sharedInstance
        	push.initializeWithAppGUID(appGUID: dictionary["pushAppGuid"] as! String, clientSecret: dictionary["pushClientSecret"] as! String)
        }

        
        
        return true
    }

    
    // Initialize Bluemix Push Notifications client SDK and register device.
    func application (_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data){
        let push = BMSPushClient.sharedInstance

        // Replace USER_ID with a unique end user identifier. This enables specific push notification targeting.
        push.registerWithDeviceToken(deviceToken: deviceToken, WithUserId: "USER_ID") { (response, statusCode, error) -> Void in
            if error.isEmpty {
                print("Response during device registration : \(response)")
                print("status code during device registration : \(statusCode)")
            } else {
                print("Error during device registration \(error)")
                print("Error during device registration \n  - status code: \(statusCode) \n  - Error: \(error) \n")
            }
        }
    }
    // Alerts the user of a received push notification when the app is running in the foreground.
    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any], fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
        
        // UserInfo dictionary will contain data sent from the server.
        var userPayload = String()
        let payload = ((((userInfo as NSDictionary).value(forKey:"aps") as! NSDictionary).value(forKey:"alert") as! NSDictionary).value(forKey:"body") as! NSString)
        let additionalPayload = (userInfo as NSDictionary).value(forKey:"payload")
        userPayload = additionalPayload.debugDescription

        let alert = UIAlertController(title: "Push Notification Received",
                                      message: payload as String,
                                      preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.default, handler: nil))
        application.keyWindow?.rootViewController?.present(alert, animated: true, completion: nil)
    	
        print("Recieved Bluemix Push Notifications message: " + (payload as String) + ", payload: " + (userPayload as String))
    }
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}
