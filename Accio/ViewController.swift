//
//  ViewController.swift
//  Accio
//
//  Created by Kyle Bashour on 1/7/17.
//  Copyright © 2017 Kyle Bashour. All rights reserved.
//

import UIKit

class ViewController: UIViewController, AirPodBreathing {

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
        performSegue(withIdentifier: R.segue.viewController.locate, sender: Side.right)
    }

    @IBAction func leftTapped(_ sender: UIButton) {
        performSegue(withIdentifier: R.segue.viewController.locate, sender: Side.left)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let locatingViewController = segue.destination as? LocatingViewController, let side = sender as? Side {
            locatingViewController.locatingSide = side
        }
    }

    @IBAction func unwindToSelection(sender: UIStoryboardSegue) { }
}

enum Side {
    case left, right
}

class LocatingViewController: UIViewController, AirPodBreathing {

    @IBOutlet weak var leftButton: UIButton!
    @IBOutlet weak var rightButton: UIButton!
    @IBOutlet weak var leftBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var rightBottomConstraint: NSLayoutConstraint!

    var locatingSide: Side = .right



    override func viewDidLoad() {
        super.viewDidLoad()

        registerForBreathingResume()

        switch locatingSide {
        case .left:
            leftBottomConstraint.constant = 100
            rightBottomConstraint.constant = -50
        case .right:
            leftBottomConstraint.constant = -50
            rightBottomConstraint.constant = 100
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
