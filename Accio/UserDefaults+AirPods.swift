//
//  UserDefaults+AirPods.swift
//  Accio
//
//  Created by Kyle Bashour on 1/7/17.
//  Copyright © 2017 Kyle Bashour. All rights reserved.
//

import Foundation

extension UserDefaults {

    enum Keys {
        static let airPodName = "AirPodName"
    }

    enum Values {
        static var airPodName: String? {
            get {
                return UserDefaults.standard.string(forKey: Keys.airPodName)
            }
            set {
                UserDefaults.standard.set(newValue, forKey: Keys.airPodName)
            }
        }
    }
}
