//
//  DetailBeerInteractor.swift
//  BeerViper
//
//  Created by Emil Shpeklord on 09.07.2022.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import Foundation

final class DetailBeerInteractor: DetailBeerInteractorProtocol {
    var presenter: DetailBeerPresenterProtocol!

    init(presenter: DetailBeerPresenterProtocol) {
        self.presenter = presenter
    }
}
