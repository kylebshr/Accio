//
//  Meter.swift
//  Accio
//
//  Created by Kyle Bashour on 1/7/17.
//  Copyright © 2017 Kyle Bashour. All rights reserved.
//

import UIKit

@IBDesignable class Meter: UIView {

    private var currentPercent: CGFloat = 0

    @IBInspectable var fillPercentage: CGFloat {
        get {
            return currentPercent
        }
        set {
            currentPercent = newValue
            updateFill()
        }
    }

    @IBInspectable var fillColor: UIColor? {
        get {
            return fillerView.backgroundColor
        }
        set {
            fillerView.backgroundColor = newValue
        }
    }

    @IBInspectable var unfilledColor: UIColor? {
        get {
            return backgroundColor
        }
        set {
            backgroundColor = newValue
        }
    }

    private let fillerView = UIView()

    init(fillColor: UIColor, unfilledColor: UIColor) {
        super.init(frame: .zero)

        self.fillColor = fillColor
        self.unfilledColor = unfilledColor

        setUpViews()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()

        setUpViews()
    }

    private func setUpViews() {

        layer.masksToBounds = true

        addSubview(fillerView)
        updateFill()
    }

    private func updateFill() {
        fillerView.frame = CGRect(x: 0, y: 0, width: frame.width * fillPercentage, height: frame.height)
    }

    override func layoutSubviews() {
        super.layoutSubviews()

        updateFill()
        layer.cornerRadius = frame.height / 2
    }
}
