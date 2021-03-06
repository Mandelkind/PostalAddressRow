//
//  ViewController.swift
//  Example
//
//  Copyright © 2016 Xmartlabs SRL. All rights reserved.
//

import UIKit
import Eureka
import PostalAddressRow

class ViewController: FormViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        form +++ Section()
            <<< PostalAddressRow() {
                $0.streetPlaceholder = "Street"
                $0.statePlaceholder = "State"
                $0.cityPlaceholder = "City"
                $0.countryPlaceholder = "Country"
                $0.postalCodePlaceholder = "Zip code"
        }
            +++ Section()
                <<< MyPostalAddressRow() {
                    $0.streetPlaceholder = "Street"
                    $0.cityPlaceholder = "City"
                    $0.postalCodePlaceholder = "Zip code"
                }.cellSetup({ (cell, row) in
                    cell.streetTextField?.font = .systemFont(ofSize: 18)
                    cell.postalCodeTextField?.font = .systemFont(ofSize: 18)
                    cell.cityTextField?.font = .systemFont(ofSize: 18)
                })
    }
}

