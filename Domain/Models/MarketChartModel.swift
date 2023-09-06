//
//  MarketChartModel.swift
//  MarketCoins
//
//  Created by Luiz Araujo on 28/08/23.
//

import Foundation

struct MarketChartModel: Codable {
//    let prices, marketCaps, totalVolumes: [[Double]]
    let prices: [GraphicDataModel]
}
