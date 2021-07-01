//
//  SecondViewController.swift
//  Notification-passingData
//
//  Created by Macbook on 26/06/2021.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    

    @IBAction func kBtnPressed(_ sender: UIButton) {
        NotificationCenter.default.post(name: .krishna, object: nil)
    }
    
    @IBAction func sBtnPressed(_ sender: UIButton) {
        NotificationCenter.default.post(name: .Sukrish, object: nil)
    }
    
}
