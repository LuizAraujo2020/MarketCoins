//
//  CoinsRouter.swift
//  MarketCoins
//
//  Created by Luiz Araujo on 28/08/23.
//

import Foundation

enum CoinsRouter {
    case coinsMarkers(currency: String, cryptoCurrency: [String]?, order: String, parPage: Int, page: Int, percentage: String)
    case coinsByIdMarketChart(id: String, currency: String, from: String, to: String)
    case coinsByIDOhlc(id: String, currency: String, days: String)
    case coinsById(id: String)

    var path: String {
        switch self {
            case .coinsMarkers:
                return API.coinsMarkets
            case .coinsByIdMarketChart(let id, _, _, _):
                return String(format: API.coinsByIDMarketChart, id)
            case .coinsByIDOhlc(let id, let currency, let days):
                return String(format: API.coinsByIdOhlc, id)
            case .coinsById(let id):
                return String(format: API.coinsById, id)
        }
    }

    func asURLRequest() throws -> URL? {
        guard let url = URL(string: API.baseURL) else { return nil }

        switch self {
            case .coinsMarkers(let currency, let cryptoCurrency, let order, let parPage, let page, let percentage):
                var parameters: [String : String] = [
                    "vs_currency": currency,
                    "order": order,
                    "per_page": String(parPage),
                    "page": String(page),
                    "sparkline": String(false),
                    "price_change_percentage": percentage
                ]

                if let cryptoCurrency {
                    parameters["ids"] = cryptoCurrency.joined(separator: ",")
                }

                return url.appendingQueryParameters(path: path, parameters: parameters)
            case .coinsByIdMarketChart(_, let currency, let from, let to):
                var parameters: [String : String] = [
                    "vs_currency": currency,
                    "from": from,
                    "to": to
                ]

                return url.appendingQueryParameters(path: path, parameters: parameters)
            case .coinsByIDOhlc(_, let currency, let days):
                var parameters: [String : String] = [
                    "vs_currency": currency,
                    "days": days
                ]

                return url.appendingQueryParameters(path: path, parameters: parameters)
            case .coinsById:
                var parameters: [String : String] = [
                    "localization": "false",
                    "tickers": String(false),
                    "market_data": String(true),
                    "community_Data": String(false),
                    "developer_Data": String(false),
                    "sparkline": String(false)
                ]

                return url.appendingQueryParameters(path: path, parameters: parameters)
        }
    }
}
