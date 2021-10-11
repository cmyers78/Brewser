//
//  AppCoordinator.swift
//  Brewser
//
//  Created by Chris Myers on 10/8/21.
//

import Foundation
import UIKit

class AppCoordinator: Coordinator {
	let window: UIWindow
	let rootViewController: UINavigationController
	
	init(_ window: UIWindow) {
		self.window = window
		rootViewController = UINavigationController()
		
		let mainVC = MainViewController()
		mainVC.view.backgroundColor = .blue
		rootViewController.pushViewController(mainVC, animated: true)
	}
	
	func start() {
		window.rootViewController = rootViewController
		window.makeKeyAndVisible()
	}
}
