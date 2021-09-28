//
//  HomeViewModel.swift
//  TestApp
//
//  Created by Shreeya Maskey on 9/26/21.
//

import Foundation
import RxSwift
import RxCocoa

class HomeViewModel : HomeNetworkHandler {
    
    func getBalance() -> Observable<BalanceModel> {
        let resource = Resource<BalanceModel>(url: URL(string:ApiConstants.baseUrl + ApiConstants.getBalance)!)
        let model = URLRequest.load(resource: resource)
        return model
    }
    
}
