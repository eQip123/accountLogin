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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        incorrectMessage.isHidden = true
    }
    @IBAction func enterButton(_ sender: UIButton) {
        if textLoginFL.text?.count != 0 {
            incorrectMessage.isHidden = true
        } else {
            incorrectMessage.isHidden = false
            incorrectMessage.text = "Введите логин"
            return
        }
        if textPasswordFL.text?.count ?? 0 >= 6 {
            incorrectMessage.isHidden = true
        } else {
            incorrectMessage.isHidden = false
            incorrectMessage.text = "Пароль должен быть более 6 символов"
            return
        }
    
        let secondViewController = storyboard?.instantiateViewController(withIdentifier: "secondPage") as! SecondViewController
        let textInfoMainVC = "Данные: \(textLoginFL.text ?? "") - \(textPasswordFL.text ?? "")"
        secondViewController.infoAccount = textInfoMainVC
        navigationController?.pushViewController(secondViewController, animated: true)
    }
    }
    

