//
//  AppDelegate.swift
//  Template_iOSUIKit_VIPER
//
//  Created by sakiyamaK on 2021/02/28.
//

import UIKit
import IQKeyboardManagerSwift

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

  let appPresenter = AppRouter.assembleModules(window: UIWindow(frame: UIScreen.main.bounds))
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    appPresenter.didFinishLaunch()
    return true
  }
}

