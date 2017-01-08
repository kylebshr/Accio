//
//  LocatingViewController.swift
//  Accio
//
//  Created by Kyle Bashour on 1/7/17.
//  Copyright © 2017 Kyle Bashour. All rights reserved.
//

import UIKit

class LocatingViewController: UIViewController, AirPodBreathing {

    @IBOutlet weak var leftButton: UIButton!
    @IBOutlet weak var rightButton: UIButton!
    @IBOutlet weak var leftBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var rightBottomConstraint: NSLayoutConstraint!

    var locatingSide: Side?

    let locatingConstant: CGFloat = 100
    let inactiveConstant: CGFloat = -50

    override func viewDidLoad() {
        super.viewDidLoad()

        guard let locatingSide = locatingSide else {
            fatalError("Don't present this view controller without setting a side")
        }

        registerForBreathingResume()

        switch locatingSide {
        case .left:
            leftBottomConstraint.constant = locatingConstant
            rightBottomConstraint.constant = inactiveConstant
        case .right:
            leftBottomConstraint.constant = inactiveConstant
            rightBottomConstraint.constant = locatingConstant
        }

        navigationItem.hidesBackButton = true
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)

        [leftButton, rightButton].forEach { $0.transform = .identity }
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)

        animateAirPods()
    }

    func animateAirPods() {
        applyBreathTo(airPod: locatingSide == .right ? rightButton : leftButton)
    }
}
