//
//  NetworkProtocol.swift
//  TestApp
//
//  Created by Shreeya Maskey on 9/8/21.
//

import Foundation
import RxCocoa
import RxSwift

protocol TransactionNetworkHandler {
    func postCreditBalance(amount: Int, remarks: String) -> Observable<String>
    func postDebitBalance(amount: Int, remarks: String) -> Observable<String>
}

protocol HomeNetworkHandler { //->HomeViewModel implemations DefaultHomeviewModel
    func getBalance() -> Observable<BalanceModel>
    func getTransactionData() -> Observable<TransactionsModel>
}
