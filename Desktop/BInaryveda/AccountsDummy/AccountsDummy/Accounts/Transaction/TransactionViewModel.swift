//
//  TransactionViewModel.swift
//  AccountsDummy
//
//  Created by Shreeya Maskey on 9/28/21.
//

import Foundation
import RxSwift
import RxCocoa

class TransactionViewModel : TransactionNetworkHandler {
    func postCreditBalance(amount: Int, remarks: String) -> Observable<String> {
        let resource = Resource<CreditDebitModel>(url: URL(string:ApiConstants.baseUrl + ApiConstants.postCredit)!)
        let parameters : [String: Any] = [
            "amount": amount,
            "title": remarks
        ]
        let model = URLRequest.post(resource: resource, params: parameters).compactMap { value in
            return value.message
        }.asObservable()
        print(model)
        return model
    }
    
    func postDebitBalance(amount: Int, remarks: String) -> Observable<String> {
            let resource = Resource<CreditDebitModel>(url: URL(string:ApiConstants.baseUrl + ApiConstants.postDebit)!)
            let parameters : [String: Any] = [
                "amount": amount,
                "title": remarks
            ]
            let model = URLRequest.post(resource: resource, params: parameters).compactMap { value in
                return value.message
            }.asObservable()
            return model
        }
    
}


