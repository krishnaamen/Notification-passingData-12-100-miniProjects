//
//  ViewController.swift
//  Notification-passingData
//
//  Created by Macbook on 26/06/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var lbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(Krishna(notification:)), name: .krishna, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(Sukrish(notification:)), name: .Sukrish, object: nil)
        
    }
    @objc func Krishna(notification:Notification){
        lbl.text = "Krishna"
        img.image = #imageLiteral(resourceName: "krishna")
    }
    @objc func Sukrish(notification:Notification){
        lbl.text = "Sukrish"
        img.image = #imageLiteral(resourceName: "sukrish")
    }
    
    
    
    
    
    
    
    
    @IBAction func cBtnPressed(_ sender: UIButton) {
        let SecondVC = self.storyboard?.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        self.navigationController?.pushViewController(SecondVC, animated: true)
    }
    
}

extension Notification.Name{
    static let krishna = Notification.Name("Krishna")
    static let Sukrish = Notification.Name("Sukrish")

}

