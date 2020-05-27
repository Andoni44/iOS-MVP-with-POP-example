//
//  TrafficLightService.swift
//  MVP
//
//  Created by Andoni on 26/05/2020.
//  Copyright © 2020 Andoni. All rights reserved.
//

import Foundation

class TrafficLightService: TrafficLightServiceProtocol {
    
    func getTrafficLight(colorName: String, callBack: (TrafficLight?) -> Void) {
        let trafficLights = [TrafficLight(colorName: "Red", description: "Stop"),
                             TrafficLight(colorName: "Green", description: "Go"),
                             TrafficLight(colorName: "Orange", description: "About to change to red")
        ]
        
        if let founfTrafficLight = trafficLights.first(where: {$0.colorName.lowercased() == colorName.lowercased()}) {
            callBack(founfTrafficLight)
        } else {
            callBack(nil)
        }
    }
}
