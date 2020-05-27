//
//  TrafficLightPresenter.swift
//  MVP
//
//  Created by Andoni on 26/05/2020.
//  Copyright © 2020 Andoni. All rights reserved.
//

import Foundation

class TrafficLightPresenter: TrafficLightPresenterProtocol {
    weak var trafficView: TrafficLightViewDelegate?
    var trafficLightService: TrafficLightServiceProtocol?

    func trafficLightColorSelected(colorName:(String)){

        trafficLightService?.getTrafficLight(colorName: colorName) { [weak self] traficLight in

            if let traficLight = traficLight {
                self?.trafficView?.displayTrafficLight(description: traficLight.description)
            }
        }
    }
}
