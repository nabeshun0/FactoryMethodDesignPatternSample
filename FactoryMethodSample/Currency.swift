//
//  FactoryMethod.swift
//  FactoryMethodSample
//
//  Created by member on 2020/08/25.
//  Copyright © 2020 Shunta Nabezawa. All rights reserved.
//

import Foundation

// 通貨の説明
protocol CurrencyDescribing {
    var symbol: String { get }
    var code: String { get }
}

final class Euro: CurrencyDescribing {
    var symbol: String {
        return "€"
    }
    var code: String {
        return "EUR"
    }
}

final class UnitedStatesDolar: CurrencyDescribing {
    var symbol: String {
        return "$"
    }
    var code: String {
        return "USD"
    }
}

enum Country {
    case unitedStates
    case spain
    case uk
    case greece
}

struct CurrencyFactory {
    static func currency(for country: Country) -> CurrencyDescribing? {
        switch country {
        case .spain, .greece:
            return Euro()
        case .unitedStates:
            return UnitedStatesDolar()
        default:
            return nil
        }
    }
}
