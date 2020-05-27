//
//  TrafficModuleLoader.swift
//  MVP
//
//  Created by Andoni on 27/05/2020.
//  Copyright © 2020 Andoni. All rights reserved.
//

import UIKit

class TrafficLightRouter: RouterProtocol {
    class func TrafficModuleCreation() -> UIViewController {
        let navController = UINavigationController()
        let service = TrafficLightService()
        
        let view: TrafficLightViewDelegate & UIViewController = ViewController()
        let presenter: TrafficLightPresenter = TrafficLightPresenter()
        
        view.trafficLightPresenter = presenter
        presenter.trafficView = view
        presenter.trafficLightService = service
        
        navController.viewControllers = [view]
        
        return navController
    }
}
