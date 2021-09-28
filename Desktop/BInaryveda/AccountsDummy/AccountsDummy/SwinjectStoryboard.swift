//
//  SwinjectStoryboard.swift
//  TestApp
//
//  Created by Shreeya Maskey on 9/9/21.
//

import Foundation
import Swinject
import SwinjectStoryboard

extension SwinjectStoryboard {
    
    class func setup() {
        let swinject = defaultContainer
        
        //Register the protocol and Return Dependency (Class)
        swinject.register(HomeNetworkHandler.self, name: "HomeNetworkHandler") { r in
            HomeViewModel()
        }.inObjectScope(.container)
        
        swinject.register(TransactionNetworkHandler.self, name: "TransactionNetworkHandler") { r in
            TransactionViewModel()
        }.inObjectScope(.container)
        
        //Assiging Required Dependency into ViewController
        swinject.storyboardInitCompleted(HomeViewController.self) { (resolvable, viewController) in
            viewController.homeViewModel = resolvable.resolve(HomeNetworkHandler.self, name: "HomeNetworkHandler")
        }
        
        swinject.storyboardInitCompleted(TransactionViewController.self) { (resolvable, viewController) in
            viewController.transactionViewModel = resolvable.resolve(TransactionNetworkHandler.self, name: "TransactionNetworkHandler")
        }
    }
    
}

