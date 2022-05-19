//
//  secondViewController.swift
//  accountLogin
//
//  Created by Aidar on 19.05.2022.
//

import UIKit

class SecondViewController: UIViewController {
    var infoAccount = ""
    @IBOutlet weak var infoLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        infoLabel.text = infoAccount
    }
}
