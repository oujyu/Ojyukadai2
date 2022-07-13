//
//  ViewController.swift
//  kadai2
//
//  Created by 松村直樹 on 2022/07/11.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var firstTextField: UITextField!
    @IBOutlet private weak var secondTextField: UITextField!
    @IBOutlet private weak var didChangeFormula: UISegmentedControl!
    @IBOutlet private weak var resultLabel: UILabel!
    private let errorText = "割る数には0以外を入力して下さい"

    @IBAction private func calculation(_ sender: Any) {
        let firstValue = Float(firstTextField.text ?? "") ?? 0
        let secondValue = Float(secondTextField.text ?? "") ?? 0
        var result: String = ""
        let segmentNum = didChangeFormula.selectedSegmentIndex

        switch segmentNum {
        case 0:
            result = String(firstValue + secondValue)
        case 1:
            result = String(firstValue - secondValue)
        case 2:
            result = String(firstValue * secondValue)
        default:
            result = String(firstValue / secondValue)
            if secondValue == 0 {
                result = errorText
            }
        }
        resultLabel.text = String(result)
    }
}
