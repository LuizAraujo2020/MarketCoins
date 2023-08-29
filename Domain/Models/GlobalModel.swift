import Foundation

struct GlobalModel {
    let data: CryptoCurrencyModel
}

// MARK: - DataClass
struct CryptoCurrencyModel {
    let activeCryptocurrencies, upcomingIcos, ongoingIcos, endedIcos: Int
    let markets: Int
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    let updatedAt: Int
}
