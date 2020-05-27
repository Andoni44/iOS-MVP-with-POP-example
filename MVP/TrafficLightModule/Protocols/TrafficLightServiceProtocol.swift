//
//  TrafficLightServiceProtocol.swift
//  MVP
//
//  Created by Andoni on 27/05/2020.
//  Copyright © 2020 Andoni. All rights reserved.
//

import Foundation

protocol TrafficLightServiceProtocol {
    func getTrafficLight(colorName: String, callBack: (TrafficLight?) -> Void)
}
