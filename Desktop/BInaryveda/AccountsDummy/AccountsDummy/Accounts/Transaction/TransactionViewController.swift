//
//  TransactionViewController.swift
//  TestApp
//
//  Created by Shreeya Maskey on 9/6/21.
//

import UIKit

class TransactionViewController: UIViewController {
    
    var networkHandler: NetworkHandler!
    
    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var remarksTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onCreditButtonClicked(_ sender: Any) {
        let amount = amountTextField.text ?? ""
        let remark = remarksTextField.text ?? ""
        if remark.isEmpty && amount.isEmpty {
            self.showAlert(with: "Enter All Data")
        } else {
            networkHandler.postCreditBalance(amount: Int(amount) ?? 0, remarks: remark) { [weak self] model in
                guard let self = self else {return}
                DispatchQueue.main.async { [weak self]  in
                    self?.showAlert(with: model)
                }
            }
        }
    }
    
    @IBAction func onDebitButtonClicked(_ sender: Any) {
        let amount = amountTextField.text ?? ""
        let remark = remarksTextField.text ?? ""
        if remark.isEmpty && amount.isEmpty {
            self.showAlert(with: "Enter All Data")
        } else {
            networkHandler.postCreditBalance(amount: Int(amount) ?? 0, remarks: remark) { [weak self] model in
                guard let self = self else {return}
                DispatchQueue.main.async { [weak self] in
                    self?.showAlert(with: model)
                }
            }
        }
    }
    
    private func showAlert(with msg: String){
        let alert = UIAlertController(title: "Test App", message: msg, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        present(alert, animated: true)
    }
}
