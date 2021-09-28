//
//  TransactionModel.swift
//  TestApp
//
//  Created by Shreeya Maskey on 9/9/21.
//

import Foundation

struct TransactionsModel: Codable {
    let transactions: [Transaction]?
}

struct Transaction: Codable {
    let amount, transactionAmount: Int?
    let type, title, time, id: String?

    enum CodingKeys: String, CodingKey {
        case amount, transactionAmount, type, title, time
        case id = "_id"
    }
}

