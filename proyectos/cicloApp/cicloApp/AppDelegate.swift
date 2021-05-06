//
//  AppDelegate.swift
//  cicloApp
//
//  Created by Javier Omedes on 12/03/21.

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        print("Inició la app")
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication){
        print("Renunciar al modo activo")
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        print("Modo background")
    }
    
    func applicationDidReceiveMemoryWarning(_ application: UIApplication) {
        print("Aaviso de memoria")
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        print("De modo background a modo activo")
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        print("La app se activó?")
    }
}

