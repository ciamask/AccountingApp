//
//  TransactionViewController.swift
//  TestApp
//
//  Created by Shreeya Maskey on 9/6/21.
//

import UIKit
import RxSwift
import RxCocoa

class TransactionViewController: UIViewController {
    
    let disposeBag = DisposeBag()
    
    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var remarksTextField: UITextField!
    
    var transactionViewModel : TransactionNetworkHandler!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onCreditButtonClicked(_ sender: Any) {
        let amount = amountTextField.text ?? ""
        let remark = remarksTextField.text ?? ""
        if remark.isEmpty && amount.isEmpty {
            self.showAlert(with: "Enter All Data")
        } else {
           let credit = transactionViewModel.postCreditBalance(amount: Int(amount) ?? 0, remarks: remark)
            .observe(on: MainScheduler.instance)
            .catch { [weak self] error in
                self?.showAlert(with: error.localizedDescription)
                return Observable.just("")
            }.asDriver(onErrorJustReturn: "Error")
        
            credit.drive()
            .disposed(by: disposeBag)
            
            navigationController?.popViewController(animated: true)
        }
    }
    
    @IBAction func onDebitButtonClicked(_ sender: Any) {
        let amount = amountTextField.text ?? ""
        let remark = remarksTextField.text ?? ""
        if remark.isEmpty && amount.isEmpty {
            self.showAlert(with: "Enter All Data")
        } else {
            let credit = transactionViewModel.postDebitBalance(amount: Int(amount) ?? 0, remarks: remark)
             .observe(on: MainScheduler.instance)
             .catch { [weak self] error in
                self?.showAlert(with: error.localizedDescription)
                 return Observable.just("")
             }.asDriver(onErrorJustReturn: "Error")
         
             credit.drive()
             .disposed(by: disposeBag)
            
            navigationController?.popViewController(animated: true)
         }
    }
    
    private func showAlert(with msg: String){
        let alert = UIAlertController(title: "Test App", message: msg, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        present(alert, animated: true)
    }
}
