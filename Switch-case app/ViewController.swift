//
//  ViewController.swift
//  Switch-case app
//
//  Created by Mutlu Çalkan on 12.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var idText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = ""
    }

    @IBAction func buttonDidPressed(_ sender: Any) {
        
        let id = idText.text
        let password = passwordText.text
        
        if id!.isEmpty || password!.isEmpty {
            label.text = "You did not enter username/password."
        }else {
            switch (id, password) {
            case ("mutlu", "1234"):
                label.text = "Welcome back Mutlu."
            case ("john", "1234"):
                label.text = "Welcome back John."
            case ("eden", "1234"):
                label.text = "Welcome back Eden."
            case ("david", "1234"):
                label.text = "Welcome back David."
            default:
                label.text = "Wrong ID / password."
            }
        }
    }
    
}
