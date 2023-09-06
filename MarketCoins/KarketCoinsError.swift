//
//  KarketCoinsError.swift
//  MarketCoins
//
//  Created by Felipe Lima on 05/09/23.
//

import Foundation

enum KarketCoinsError: Error {
    case internalServerError
    case badRequestError
    case notFoundError
    case undefinedError
    
    var errorDescription: String {
        switch self {
        case .internalServerError:
            return "Ocorreu um erro no servidor! Gostaria de tentar novamente?"
        case .badRequestError:
            return "Sua requisição não foi bem sucedida! Gostaria de tentar novamente?"
        case .notFoundError:
            return "O serviço que você está buscando não existe! Gostaria de tentar novamente?"
        case .undefinedError:
            return "Ocorreu um erro! Gostaria de tentar novamente?"
        }
    }
}
