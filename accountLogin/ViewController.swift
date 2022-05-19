//
//  ViewController.swift
//  accountLogin
//
//  Created by Aidar on 19.05.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textLoginFL: UITextField!
    @IBOutlet weak var textPasswordFL: UITextField!
    @IBOutlet weak var incorrectMessage: UILabel!
    
    @IBAction func enterButton(_ sender: UIButton) {
        
        
        
        
        
        
        let secondViewController = storyboard?.instantiateViewController(withIdentifier: "secondPage")
        guard let secondViewController = secondViewController else  {
        printContent("Is empty")
        return
        }
        navigationController?.pushViewController(secondViewController, animated: true)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

