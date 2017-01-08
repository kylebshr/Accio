//
//  EnterNameViewController.swift
//  Accio
//
//  Created by Kyle Bashour on 1/7/17.
//  Copyright © 2017 Kyle Bashour. All rights reserved.
//

import UIKit

class EnterNameViewController: UITableViewController {

    @IBOutlet weak var nameField: UITextField!

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        view.endEditing(true)
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()

        if !nameField.isFirstResponder {
            nameField.becomeFirstResponder()
        }
    }

    @IBAction func saveTapped(_ sender: UIButton) {

        nameField.resignFirstResponder()
        nameField.becomeFirstResponder()

        if let name = nameField.text, !name.isEmpty {
            UserDefaults.Values.airPodName = name
            dismiss(animated: true, completion: nil)
        }
    }
}
