//
//  ViewController.swift
//  FactoryMethodSample
//
//  Created by member on 2020/08/25.
//  Copyright © 2020 Shunta Nabezawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let noCurrencyCode = "No Currency Code Available"

    override func viewDidLoad() {
        super.viewDidLoad()
        let greece = CurrencyFactory.currency(for: .greece)?.code ?? noCurrencyCode
        let spain = CurrencyFactory.currency(for: .spain)?.code ?? noCurrencyCode
        let unitedStates = CurrencyFactory.currency(for: .unitedStates)?.code ?? noCurrencyCode
        let uk = CurrencyFactory.currency(for: .uk)?.code ?? noCurrencyCode


        print("greece:", greece)
        print("spain:", spain)
        print("unitedStates:", unitedStates)
        print("uk:", uk)
    }
}

