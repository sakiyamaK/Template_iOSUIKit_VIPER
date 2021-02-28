//
//  AppInteractor.swift
//  Template_iOSUIKit_VIPER
//
//  Created by  on 2021/2/28.
//

import Foundation

protocol AppUsecase {
  var isLogined: Bool { get }
}

final class AppInteractor {
  init() {
  }
}

extension AppInteractor: AppUsecase {
  var isLogined: Bool { true }
}
