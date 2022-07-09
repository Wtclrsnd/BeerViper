//
//  BeerProtocols.swift
//  BeerViper
//
//  Created by Emil Shpeklord on 07.07.2022.
//

import Foundation

protocol BeerViewProtocol: AnyObject {
    var presenter: BeerPresenterProtocol! { get set }
    func presentData(vm: [Beer.InitForm.ViewModel])
}

protocol BeerInteractorProtocol: AnyObject {
    var manager: BeerAPIProtocol! { get set }
    func getData()
}

protocol BeerPresenterProtocol: AnyObject {
    var view: BeerViewProtocol! { get set }
    var interactor: BeerInteractorProtocol! { get set }
    var router: BeerRouterProtocol! { get set }
    func getData()
    func performData(response: [Beer.InitForm.Response])
    func moveToDetail(data: Beer.InitForm.ViewModel)
}

protocol BeerRouterProtocol: AnyObject {
    func moveToDetail(data: Beer.InitForm.ViewModel)
}

protocol BeerAPIProtocol: AnyObject {
    func getData(request: URLRequest, completion: @escaping (_ beer: BeerEntity) -> Void)
}

