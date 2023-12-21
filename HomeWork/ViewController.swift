//
//  ViewController.swift
//  HomeWork
//
//  Created by Антон Ровенко on 19.12.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private var counter = 0 {
        didSet{
            valueCounterLabel.text = "Значение счётчика: \(counter)"
        }
    }
    
    private var currentDataAndTime: String {
        let currentDate = Date()
        let date = DateFormatter()
        date.dateStyle = .short
        date.timeStyle = .medium
        return "\(date.string(from: currentDate))"
    }
    
    @IBOutlet weak private var plusOneButton: UIButton!
    @IBOutlet weak private var valueCounterLabel: UILabel!
    @IBOutlet weak private var minusOneButton: UIButton!
    @IBOutlet weak private var zeroButton: UIButton!
    @IBOutlet weak private var historyTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        historyTextView.text = "\nИстория изменений:"
    }
    
    @IBAction private func changeValueCounterPlusOne(_ sender: Any) {
        counter += 1
        historyTextView.text = "[\(currentDataAndTime)]: Значение изменено на +1\n" + historyTextView.text
    }
    
    @IBAction private func changeValueCounterMinusOne(_ sender: UIButton) {
        if counter == 0 {
            historyTextView.text = "[\(currentDataAndTime)]: Попытка уменьшить значение счётчика ниже 0\n" + historyTextView.text
        } else {
            counter -= 1
            historyTextView.text = "[\(currentDataAndTime)]: Значение изменено на -1\n" + historyTextView.text
        }
    }
    
    @IBAction private func changeValueCounterZero(_ sender: UIButton) {
        historyTextView.text = "[\(currentDataAndTime)]: Значение сброшено\n" + historyTextView.text
        counter = 0
    }
}
