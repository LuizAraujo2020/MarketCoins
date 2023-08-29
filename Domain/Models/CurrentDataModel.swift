//
//  CurrentDataModel.swift
//  MarketCoins
//
//  Created by Luiz Araujo on 28/08/23.
//

import Foundation

// MARK: - CurrentDataModel
struct CurrentDataModel {
    let id, symbol, name: String
    let currenctDataDescription: [String : String]
    let marketCapRank: Int?
    let image: Image
    let marketData: MarketData
    let lastUpdated: Date



//    let assetPlatformID: NSNull
////    let platforms: Platforms
////    let detailPlatforms: DetailPlatforms
//    let blockTimeInMinutes: Int
//    let hashingAlgorithm: String
//    let categories: [String]
//    let publicNotice: NSNull
//    let additionalNotices: [Any?]
////    let localization, description: Tion
////    let links: Links
//    let countryOrigin, genesisDate: String
//    let sentimentVotesUpPercentage, sentimentVotesDownPercentage: Double
//    let watchlistPortfolioUsers, coingeckoRank: Int
//    let coingeckoScore, developerScore, communityScore, liquidityScore: Double
//    let publicInterestScore: Double
////    let communityData: CommunityData
////    let developerData: DeveloperData
////    let publicInterestStats: PublicInterestStats
//    let statusUpdates: [Any?]
////    let tickers: [Ticker]
}

//// MARK: - CommunityData
//struct CommunityData {
//    let facebookLikes: NSNull
//    let twitterFollowers, redditAveragePosts48H, redditAverageComments48H, redditSubscribers: Int
//    let redditAccountsActive48H: Int
//    let telegramChannelUserCount: NSNull
//}

//// MARK: - Tion
//struct Tion {
//    let en, de, es, fr: String
//    let it, pl, ro, hu: String
//    let nl, pt, sv, vi: String
//    let tr, ru, ja, zh: String
//    let zhTw, ko, ar, th: String
//    let id, cs, da, el: String
//    let hi, no, sk, uk: String
//    let he, fi, bg, hr: String
//    let lt, sl: String
//}

//// MARK: - DetailPlatforms
//struct DetailPlatforms {
//    let empty: Empty
//}

// MARK: - Empty
struct Empty {
    let decimalPlace: NSNull
    let contractAddress: String
}

//// MARK: - DeveloperData
//struct DeveloperData {
//    let forks, stars, subscribers, totalIssues: Int
//    let closedIssues, pullRequestsMerged, pullRequestContributors: Int
//    let codeAdditionsDeletions4_Weeks: CodeAdditionsDeletions4_Weeks
//    let commitCount4_Weeks: Int
//    let last4_WeeksCommitActivitySeries: [Any?]
//}

// MARK: - CodeAdditionsDeletions4_Weeks
struct CodeAdditionsDeletions4_Weeks {
    let additions, deletions: Int
}

// MARK: - Image
struct Image {
    let thumb, small, large: String
}

//// MARK: - Links
//struct Links {
//    let homepage: [String]
//    let blockchainSite, officialForumURL: [String]
//    let chatURL, announcementURL: [String]
//    let twitterScreenName, facebookUsername: String
//    let bitcointalkThreadIdentifier: NSNull
//    let telegramChannelIdentifier: String
//    let subredditURL: String
//    let reposURL: ReposURL
//}

// MARK: - ReposURL
struct ReposURL {
    let github: [String]
    let bitbucket: [Any?]
}

// MARK: - MarketData
struct MarketData {
    let currentPrice: [String: Double]
    let totalValueLocked, mcapToTvlRatio, fdvToTvlRatio, roi: NSNull
    let ath, athChangePercentage: [String: Double]
    let athDate: [String: String]
    let atl, atlChangePercentage: [String: Double]
    let atlDate: [String: String]
    let marketCap: [String: Double]
    let marketCapRank: Int
    let fullyDilutedValuation, totalVolume, high24H, low24H: [String: Double]
    let priceChange24H, priceChangePercentage24H, priceChangePercentage7D, priceChangePercentage14D: Double
    let priceChangePercentage30D, priceChangePercentage60D, priceChangePercentage200D, priceChangePercentage1Y: Double
    let marketCapChange24H, marketCapChangePercentage24H: Double
    let priceChange24HInCurrency, priceChangePercentage1HInCurrency, priceChangePercentage24HInCurrency, priceChangePercentage7DInCurrency: [String: Double]
    let priceChangePercentage14DInCurrency, priceChangePercentage30DInCurrency, priceChangePercentage60DInCurrency, priceChangePercentage200DInCurrency: [String: Double]
    let priceChangePercentage1YInCurrency, marketCapChange24HInCurrency, marketCapChangePercentage24HInCurrency: [String: Double]
    let totalSupply, maxSupply, circulatingSupply: Int
    let lastUpdated: String
}

//// MARK: - Platforms
//struct Platforms {
//    let empty: String
//}

//// MARK: - PublicInterestStats
//struct PublicInterestStats {
//    let alexaRank: Int
//    let bingMatches: NSNull
//}

//// MARK: - Ticker
//struct Ticker {
//    let base, target: String
//    let market: Market
//    let last, volume: Double
//    let convertedLast, convertedVolume: [String: Double]
//    let trustScore: String
//    let bidAskSpreadPercentage: Double
//    let timestamp, lastTradedAt, lastFetchAt: Date
//    let isAnomaly, isStale: Bool
//    let tradeURL: String?
//    let tokenInfoURL: NSNull
//    let coinID: String
//    let targetCoinID: String?
//}

// MARK: - Market
struct Market {
    let name, identifier: String
    let hasTradingIncentive: Bool
}
