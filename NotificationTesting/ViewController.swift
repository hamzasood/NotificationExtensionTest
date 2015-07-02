//
//  ViewController.swift
//  NotificationTesting
//
//  Created by Hamza Sood on 02/07/2015.
//  Copyright © 2015 Hamza Sood. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    @IBAction func sendTestNotification(sender: NSButton) {
        let testNotification = NSUserNotification()
        testNotification.title = "Test Notification"
        testNotification.subtitle = "Click the action for 🎉"
        testNotification.actionButtonTitle = "Awesome\nAction"
        testNotification.showsButtons = true
        testNotification.userInfo = ["__ncNotificationExtensionIdentifier" : "com.hamzasood.NotificationTesting.BannerInterface"]
        
        NSApp.hide(nil)
        NSUserNotificationCenter.defaultUserNotificationCenter().deliverNotification(testNotification)
    }
    
}
