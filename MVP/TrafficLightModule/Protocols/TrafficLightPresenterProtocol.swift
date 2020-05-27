//
//  TrafficLightPresenterProtocol.swift
//  MVP
//
//  Created by Andoni on 27/05/2020.
//  Copyright © 2020 Andoni. All rights reserved.
//

import Foundation

protocol TrafficLightPresenterProtocol {
    var trafficView: TrafficLightViewDelegate? { get set }
    var trafficLightService: TrafficLightServiceProtocol? { get set }
    
    func trafficLightColorSelected(colorName:(String))
}


