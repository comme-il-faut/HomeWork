//
//  ViewController.swift
//  HomeWork
//
//  Created by Антон Ровенко on 19.12.2023.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var plusOneButton: UIButton!
    @IBOutlet weak var valueCounterLabel: UILabel!
    
    var counter = 0 {
        didSet{
            valueCounterLabel.text = "Значение счётчика: \(counter)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeValueCounterPlusOne(_ sender: Any) {
        counter += 1
    }
    
}

