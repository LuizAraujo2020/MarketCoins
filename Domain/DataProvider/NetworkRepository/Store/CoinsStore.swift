//
//  CoinsStore.swift
//  MarketCoins
//
//  Created by Luiz Araujo on 30/08/23.
//

import Foundation

protocol CoinsStoreProtocol: GenericStoreProtocol {
    func fetchListCoins(
        by vsCurrency: String,
        with cryptoCurrency: [String]?,
        orderBy order: String,
        total parPage: Int,
        page: Int,
        percentagePrice: String,
        completion: @escaping completion<[CoinModel]?>)
    func fetchHistorical(
        by id: String,
        currency vsCurrency: String,
        from: String,
        to: String,
        completion: @escaping completion<MarketChartModel?>)
    func fetchHistorical(
        by id: String,
        currency vsCurrency: String,
        of days: String,
        completion: @escaping completion<[GraphicDataModel]?>)
    func fetchCoin(
        by id: String,
        completion: @escaping completion<CurrentDataModel?>)
}

class CoinsStore: GenericStoreRequest, CoinsStoreProtocol {
    func fetchListCoins(
        by vsCurrency: String,
        with cryptoCurrency: [String]?,
        orderBy order: String,
        total parPage: Int,
        page: Int,
        percentagePrice: String,
        completion: @escaping completion<[CoinModel]?>) {
            do {
                guard let url = try CoinsRouter.coinsMarkets(
                    currency: vsCurrency,
                    cryptoCurrency: cryptoCurrency,
                    order: order,
                    parPage: parPage,
                    page: page,
                    percentage: percentagePrice).asURLRequest() else {
                    return completion(nil, error)
                }
            } catch let error {
                completion(nil, error)
            }
    }

    func fetchHistorical(
        by id: String,
        currency vsCurrency: String,
        from: String,
        to: String,
        completion: @escaping completion<MarketChartModel?>) {
        <#code#>
    }

    func fetchHistorical(
        by id: String,
        currency vsCurrency: String,
        of days: String,
        completion: @escaping completion<[GraphicDataModel]?>) {
        <#code#>
    }

    func fetchCoin(
        by id: String,
        completion: @escaping completion<CurrentDataModel?>) {
        <#code#>
    }


}
