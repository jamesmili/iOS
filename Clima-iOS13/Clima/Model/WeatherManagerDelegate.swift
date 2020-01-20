//
//  WeatherManagerDelegate.swift
//  Clima
//
//  Created by James Militante on 2020-01-07.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

protocol WeatherManagerDelegate {
    func didUpdateWeather(_ weatherManager: WeatherManager, weather: WeatherModel)
    func didFailWithError(error: Error)
}
