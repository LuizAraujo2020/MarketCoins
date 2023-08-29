//
//  API.swift
//  MarketCoins
//
//  Created by Luiz Araujo on 28/08/23.
//

import Foundation

struct API {
    static let baseURL = "https://api.coingecko.com/api/v3"
    static let coinsMarkets = "/coins/markets"
    static let coinsByIDMarketChart = "/coins/%@/market_chart/range"
    static let coinsByIdOhlc = "/coins/%@/ohlc"
    static let global = "/global"
    static let coinsById = "/coins/%@"
}
