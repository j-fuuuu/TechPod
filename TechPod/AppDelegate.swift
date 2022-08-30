//
//  AppDelegate.swift
//  TechPod
//
//  Created by 藤井玖光 on 2022/08/30.
//

import UIKit
import AVFoundation

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        //play background
        let seesion = AVAudioSession.sharedInstance()
        do{
            try seesion.setCategory(.playback, mode: .default)
        }catch {
            //エラー処理
            fatalError("カテゴリ設定失敗")
        }
        //sessonのアクティブ化
        do {
            try seesion.setActive(true)
        } catch {
            //audio sessionの有効化失敗の処置
            //ここではエラーとして停止してる
            fatalError("session有効化失敗")
        }
        
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

