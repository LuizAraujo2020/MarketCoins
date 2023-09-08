//
//  CoinViewCell.swift
//  MarketCoins
//
//  Created by Luiz Araujo on 03/09/22.
//

import UIKit

class CoinViewCell: UITableViewCell {
    
    static let indentifier = "CoinViewCell"
    
    @IBOutlet weak var rankLabel: UILabel!
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var symbilLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var percentageLabel: UILabel!
    @IBOutlet weak var marketCapitalizationLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
