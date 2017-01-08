//
//  AirPodBreathing.swift
//  Accio
//
//  Created by Kyle Bashour on 1/7/17.
//  Copyright © 2017 Kyle Bashour. All rights reserved.
//

import UIKit

@objc protocol AirPodBreathing {
    @objc func animateAirPods()
}

extension AirPodBreathing where Self: UIViewController {

    func resetBreath(for airPod: UIView) {
        airPod.transform = .identity
    }

    func applyBreathTo(airPod: UIView, delay: Double = 0) {

        resetBreath(for: airPod)

        let animation = { airPod.transform = CGAffineTransform(translationX: 0, y: 25) }
        let options: UIViewAnimationOptions = [.curveEaseInOut, .autoreverse, .repeat, .allowUserInteraction]
        UIView.animate(withDuration: 1.5, delay: delay, options: options, animations: animation, completion: nil)
    }

    func registerForBreathingResume() {
        NotificationCenter.default.addObserver(self, selector: #selector(animateAirPods), name: .UIApplicationWillEnterForeground, object: nil)
    }
}
