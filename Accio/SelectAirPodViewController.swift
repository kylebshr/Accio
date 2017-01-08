//
//  ViewController.swift
//  Accio
//
//  Created by Kyle Bashour on 1/7/17.
//  Copyright © 2017 Kyle Bashour. All rights reserved.
//

import UIKit

class SelectAirPodViewController: UIViewController, AirPodBreathing {

    @IBOutlet var airPodButtons: [UIButton]!

    override func viewDidLoad() {
        super.viewDidLoad()

        registerForBreathingResume()

        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.barTintColor = .clear
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)

        airPodButtons.forEach(resetBreath)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)

        animateAirPods()
    }

    func animateAirPods() {
        applyBreathTo(airPod: airPodButtons[0])
        applyBreathTo(airPod: airPodButtons[1], delay: 0.3)
    }

    @IBAction func rightTapped(_ sender: UIButton) {
        performSegue(withIdentifier: R.segue.selectAirPodViewController.locate, sender: Side.right)
    }

    @IBAction func leftTapped(_ sender: UIButton) {
        performSegue(withIdentifier: R.segue.selectAirPodViewController.locate, sender: Side.left)
    }

    @IBAction func unwindToSelection(sender: UIStoryboardSegue) { }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let locatingViewController = segue.destination as? LocatingViewController, let side = sender as? Side {
            locatingViewController.locatingSide = side
        }
    }
}
