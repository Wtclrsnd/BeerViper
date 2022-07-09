//
//  DetailBeerPresenter.swift
//  BeerViper
//
//  Created by Emil Shpeklord on 09.07.2022.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import Foundation

final class DetailBeerPresenter: DetailBeerPresenterProtocol {

    weak var view: DetailBeerViewProtocol!

    var interactor: DetailBeerInteractorProtocol!

    var data: Beer.InitForm.ViewModel?

    init(view: DetailBeerViewProtocol) {
        self.view = view
        }
}
