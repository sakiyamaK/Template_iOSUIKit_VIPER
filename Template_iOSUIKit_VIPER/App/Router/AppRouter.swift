//
//  AppRouter.swift
//  Template_iOSUIKit_VIPER
//
//  Created by  on 2021/2/28.
//

import UIKit

protocol AppWireframe: AnyObject {
  func showHome()
  func showLogin()
}

final class AppRouter {
  private let window: UIWindow
//  private unowned let rootTabController: UITabBarController
//  private unowned let navController: UINavigationController

  private init(window: UIWindow) {
    self.window = window
  }

  static func assembleModules(window: UIWindow) -> AppPresenter {

    let interactor = AppInteractor()
    let router = AppRouter(window: window)
    let presenter = AppPresenter(
      interactor: interactor,
      router: router
    )
    return presenter
  }
}

extension AppRouter: AppWireframe {
  func showHome() {
    DispatchQueue.main.async {
      let vc = UIViewController()
      vc.view.backgroundColor = .blue
      self.window.rootViewController = vc
      self.window.makeKeyAndVisible()
    }
  }

  func showLogin() {
    DispatchQueue.main.async {
      let vc = UIViewController()
      vc.view.backgroundColor = .red
      self.window.rootViewController = vc
      self.window.makeKeyAndVisible()
    }
  }
}
