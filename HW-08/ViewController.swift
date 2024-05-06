//
//  ViewController.swift
//  HW-08
//
//  Created by Кирилл Курочкин on 02.05.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var submitButton: UIButton!
    
    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    
    @IBOutlet weak var view111: UIView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        submitButton.setTitle("Submit", for: .normal)
        firstTextField.delegate = self
        secondTextField.delegate = self
        //        let backgroundImageView = UIImageView(frame: scrollView.bounds)
        //               backgroundImageView.image = UIImage(named: "ImageTest")
        //               backgroundImageView.contentMode = .scaleAspectFill
        //               scrollView.addSubview(backgroundImageView)
        //    }
        //
        //    @IBAction func submitButtonTapped(_ sender: UIButton) {
        //
        //        let firstText = firstTextField.text ?? ""
        //            let secondText = secondTextField.text ?? ""
        //        greetingLabel.text = "Hello \(firstText) \(secondText)"
        //        firstTextField.text = ""
        //        secondTextField.text = ""
        //    }
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if firstTextField == self.firstTextField {
            secondTextField.becomeFirstResponder()
        } else {
            firstTextField.resignFirstResponder()
        }
        return true
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        let firstText = firstTextField.text ?? ""
            let secondText = secondTextField.text ?? ""
        greetingLabel.text = "Hello \(firstText) \(secondText)"

    }

}
