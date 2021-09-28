//
//  HomeModel.swift
//  TestApp
//
//  Created by Shreeya Maskey on 9/2/21.
//

struct BalanceModel : Decodable {
    let balance: Int?
}

extension BalanceModel {
    static var empty: BalanceModel {
        return BalanceModel(balance: 00)
    }
}
