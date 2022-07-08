//
//  BeerInteractor.swift
//  BeerViper
//
//  Created by Emil Shpeklord on 07.07.2022.
//

import Foundation

final class BeerInteractor: BeerInteractorProtocol {
    var manager: BeerAPIProtocol!
    var presenter: BeerPresenterProtocol!

    init(presenter: BeerPresenterProtocol, manager: BeerAPIProtocol) {
        self.presenter = presenter
        self.manager = manager
    }
}
