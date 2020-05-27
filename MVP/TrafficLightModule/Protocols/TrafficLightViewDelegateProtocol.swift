//
//  TrafficLightViewDelegateProtocol.swift
//  MVP
//
//  Created by Andoni on 26/05/2020.
//  Copyright © 2020 Andoni. All rights reserved.
//

import Foundation

protocol TrafficLightViewDelegate: class {
    var trafficLightPresenter: TrafficLightPresenterProtocol? { get set }
    
    func displayTrafficLight(description:(String))
}
