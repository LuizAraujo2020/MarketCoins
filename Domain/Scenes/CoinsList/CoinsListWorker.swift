//
//  CoinsListWorker.swift
//  MarketCoins
//
//  Created by Luiz Araujo on 03/09/22.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

class CoinsListWorker {
    
    private let dataProvider: ListCoinsDataProvider?
    private var completion: ((Result<[CoinModel]?, KarketCoinsError>) -> Void)?
    
    init(dataProvider: ListCoinsDataProvider = ListCoinsDataProvider()) {
        self.dataProvider = dataProvider
        self.dataProvider?.delegate = self
    }
    
    func doFetchListCoins(baseCoin: String,
                          orderBy: String,
                          top: Int,
                          percentagePrice: String,
                          completion: @escaping ((Result<[CoinModel]?, KarketCoinsError>) -> Void)) {
        
        dataProvider?.fetchListCoins(by: baseCoin,
                                     with: nil,
                                     orderBy: orderBy,
                                     total: top,
                                     page: 1,
                                     percentagePrice: percentagePrice)
        self.completion = completion
    }
}

extension CoinsListWorker: ListCoinsDataProviderDelegate {
    
    func success(model: Any) {
        guard let completion = completion else {
            fatalError("Completion not implemented!")
        }
        completion(.success(model as? [CoinModel]))
    }
    
    func errorData(_ provider: GenericDataProviderDelegate?, error: Error) {
        guard let completion = completion else {
            fatalError("Completion not implemented!")
        }
        
        if error.errorCode == 500 {
            completion(.failure(.internalServerError))
        } else if error.errorCode == 400 {
            completion(.failure(.badRequestError))
        } else if error.errorCode == 404 {
            completion(.failure(.notFoundError))
        } else {
            completion(.failure(.undefinedError))
        }
    }
}
