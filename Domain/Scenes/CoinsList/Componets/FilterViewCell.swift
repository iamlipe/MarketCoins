//
//  FilterViewCell.swift
//  MarketCoins
//
//  Created by Felipe Lima on 04/09/23.
//

import UIKit

class FilterViewCell: UICollectionViewCell {
    
    static let indentifier = "FilterViewCell"
    
    @IBOutlet weak var filterLabel: UILabel!
    
    func setupCell(filter: Filter) {
        switch filter.type {
        case .coins:
            if let coinsFilter = CoinsFilterEnum(rawValue: filter.key) {
                filterLabel.text = coinsFilter.symbol
            }
        case .top:
            if let key = Int(filter.key), let topFilter = TopFilterEnum(rawValue: key) {
                filterLabel.text = topFilter.title
            }
        case .priceChangePercentage:
            if let priceChangePercentageFilter = PriceChangePercentageFilterEnum(rawValue: filter.key) {
                filterLabel.text = priceChangePercentageFilter.title
            }
        case .orderBy:
            if let orderByFilter = OrderByFilterEnum(rawValue: filter.key) {
                filterLabel.text = "Ordenado Por \(orderByFilter.title) \(orderByFilter.order)"
            }
        }
    }
}
