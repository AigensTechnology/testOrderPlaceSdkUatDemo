//
//  AppDelegate.swift
//  testMyNewOrderPlaceUat
//
//  Created by 陈培爵 on 2018/11/22.
//  Copyright © 2018年 PeiJueChen. All rights reserved.
//

import UIKit
import OrderPlaceSDK
import OrderPlaceWechatPaySDK
import OrderPlaceAlipaySDK
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        WechatExecutor.application(application, didFinishLaunchingWithOptions: launchOptions)
        return true
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {

        OrderPlace.application(app, open: url)

        return true
    }

    func application(_ application: UIApplication, open url: URL, sourceApplication: String?, annotation: Any) -> Bool {

        OrderPlace.application(application, open: url)

        return true
    }
    

}

