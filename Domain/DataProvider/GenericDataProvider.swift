//
//  GenericDataProvider.swift
//  MarketCoins
//
//  Created by Felipe Lima on 02/09/23.
//

import Foundation

protocol GenericDataProviderDelegate {
    func success(model: Any)
    func errorData(_ provider: GenericDataProviderDelegate?, error: Error)
}

class DataProviderManager<T, S> {
    var delegate: T?
    var model: S?
}
