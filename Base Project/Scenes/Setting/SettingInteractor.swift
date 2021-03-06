//
//  SettingInteractor.swift
//  Base Project
//
//  Created by Saminos on 08/06/17.
//  Copyright (c) 2017 Flipbox. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so you can apply
//  clean architecture to your iOS and Mac projects, see http://clean-swift.com
//

import UIKit

protocol SettingInteractorInterface
{
  func doSomething(request: Setting.Something.Request)
}

class SettingInteractor: SettingInteractorInterface
{
  var output: SettingPresenterInterface!
  var worker: SettingWorker!
  
  // MARK: - Business logic
  
  func doSomething(request: Setting.Something.Request)
  {
    // NOTE: Create some Worker to do the work
    
    worker = SettingWorker()
    worker.doSomeWork()
    
    // NOTE: Pass the result to the Presenter
    
    let response = Setting.Something.Response()
    output.presentSomething(response: response)
  }
}
