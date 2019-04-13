//
//  AppDelegate.swift
//  MidProject
//
//  Created by 정유림 on 2019. 4. 9..
//  Copyright © 2019년 정유림. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
 
    typealias  titleContentData = (title : String, Content : String, done : Int)
    
    
    struct Day {
        var DayContent01:titleContentData
        var DayContent02:titleContentData
        var DayContent03:titleContentData
        var DayContent04:titleContentData
    }
    //스트럭 타입으로 만들어서
    // 총 30개(30일) 디폴트 값 지정 
    var month:[Day] = [Day(DayContent01: ("","",1), DayContent02:  ("","",1), DayContent03:  ("","",1), DayContent04:  ("","",1)),
                       Day(DayContent01: ("","",1), DayContent02:  ("","",1), DayContent03:  ("","",1), DayContent04:  ("","",1)),
                       Day(DayContent01: ("","",1), DayContent02:  ("","",1), DayContent03:  ("","",1), DayContent04:  ("","",1)),
                       Day(DayContent01: ("","",1), DayContent02:  ("","",1), DayContent03:  ("","",1), DayContent04:  ("","",1)),
                       Day(DayContent01: ("","",1), DayContent02:  ("","",1), DayContent03:  ("","",1), DayContent04:  ("","",1)),
                       Day(DayContent01: ("","",1), DayContent02:  ("","",1), DayContent03:  ("","",1), DayContent04:  ("","",1)),
                       Day(DayContent01: ("","",1), DayContent02:  ("","",1), DayContent03:  ("","",1), DayContent04:  ("","",1)),
                       Day(DayContent01: ("","",1), DayContent02:  ("","",1), DayContent03:  ("","",1), DayContent04:  ("","",1)),
                       Day(DayContent01: ("","",1), DayContent02:  ("","",1), DayContent03:  ("","",1), DayContent04:  ("","",1)),
                       Day(DayContent01: ("","",1), DayContent02:  ("","",1), DayContent03:  ("","",1), DayContent04:  ("","",1)),
                       Day(DayContent01: ("","",1), DayContent02:  ("","",1), DayContent03:  ("","",1), DayContent04:  ("","",1)),
                       Day(DayContent01: ("","",1), DayContent02:  ("","",1), DayContent03:  ("","",1), DayContent04:  ("","",1)),
                       Day(DayContent01: ("","",1), DayContent02:  ("","",1), DayContent03:  ("","",1), DayContent04:  ("","",1)),
                       Day(DayContent01: ("","",1), DayContent02:  ("","",1), DayContent03:  ("","",1), DayContent04:  ("","",1)),
                       Day(DayContent01: ("","",1), DayContent02:  ("","",1), DayContent03:  ("","",1), DayContent04:  ("","",1)),
                       Day(DayContent01: ("","",1), DayContent02:  ("","",1), DayContent03:  ("","",1), DayContent04:  ("","",1)),
                       Day(DayContent01: ("","",1), DayContent02:  ("","",1), DayContent03:  ("","",1), DayContent04:  ("","",1)),
                       Day(DayContent01: ("","",1), DayContent02:  ("","",1), DayContent03:  ("","",1), DayContent04:  ("","",1)),
                       Day(DayContent01: ("","",1), DayContent02:  ("","",1), DayContent03:  ("","",1), DayContent04:  ("","",1)),
                       Day(DayContent01: ("","",1), DayContent02:  ("","",1), DayContent03:  ("","",1), DayContent04:  ("","",1)),
                       Day(DayContent01: ("","",1), DayContent02:  ("","",1), DayContent03:  ("","",1), DayContent04:  ("","",1)),
                       Day(DayContent01: ("","",1), DayContent02:  ("","",1), DayContent03:  ("","",1), DayContent04:  ("","",1)),
                       Day(DayContent01: ("","",1), DayContent02:  ("","",1), DayContent03:  ("","",1), DayContent04:  ("","",1)),
                       Day(DayContent01: ("","",1), DayContent02:  ("","",1), DayContent03:  ("","",1), DayContent04:  ("","",1)),
                       Day(DayContent01: ("","",1), DayContent02:  ("","",1), DayContent03:  ("","",1), DayContent04:  ("","",1)),
                       Day(DayContent01: ("","",1), DayContent02:  ("","",1), DayContent03:  ("","",1), DayContent04:  ("","",1)),
                       Day(DayContent01: ("","",1), DayContent02:  ("","",1), DayContent03:  ("","",1), DayContent04:  ("","",1)),
                       Day(DayContent01: ("","",1), DayContent02:  ("","",1), DayContent03:  ("","",1), DayContent04:  ("","",1)),
                       Day(DayContent01: ("","",1), DayContent02:  ("","",1), DayContent03:  ("","",1), DayContent04:  ("","",1)),
                       Day(DayContent01: ("","",1), DayContent02:  ("","",1), DayContent03:  ("","",1), DayContent04:  ("","",1))]
    
   // var Day:[titleContentData] = []
    // 스트럭 타입 엘리먼트를 30개 지정
    //스트럭을 엘리먼트로하는 배열
    
    var isDone:[titleContentData] = []
    var notDone:[titleContentData] = []
    
   
    
   
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

