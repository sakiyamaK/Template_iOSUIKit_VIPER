//
//  AppPresentation.swift
//  Template_iOSUIKit_VIPER
//
//  Created by  on 2021/2/28.
//

import Foundation

protocol AppPresentation: AnyObject {
  func didFinishLaunch()
}

final class AppPresenter {
  private let router: AppWireframe
  private let interactor: AppUsecase
  
  init(interactor: AppUsecase, router: AppWireframe) {
    self.interactor = interactor
    self.router = router
  }
}

extension AppPresenter: AppPresentation {
  func didFinishLaunch() {
    if self.interactor.isLogined {
      self.router.showHome()
    } else {
      self.router.showLogin()
    }
  }
}
