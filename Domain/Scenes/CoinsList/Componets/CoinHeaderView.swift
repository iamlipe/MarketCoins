//
//  CoinHeaderView.swift
//  MarketCoins
//
//  Created by Felipe Lima on 04/09/23.
//

import UIKit

class CoinHeaderView: UITableViewHeaderFooterView {
    
    static let identifier = "CoinHeaderView"

    @IBOutlet weak var priceChangePercentualLabel: UILabel!
    
    func setupPriceChangePergentage(from filter: Filter) {
        if filter.type == .priceChangePercentage {
            if let priceChangePercentageFilter = PriceChangePercentageFilterEnum(rawValue: filter.key) {
                priceChangePercentualLabel.text = priceChangePercentageFilter.title
            }
        }
    }
}
