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
    @IBOutlet weak var minusOneButton: UIButton!
    @IBOutlet weak var zeroButton: UIButton!
    
    
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
    
    
    @IBAction func changeValueCounterMinusOne(_ sender: UIButton) {
        if counter == 0 {
            counter = 0
        } else {
            counter -= 1
        }
    }
    
    @IBAction func changeValueCounterZero(_ sender: UIButton) {
        counter = 0
    }
}

