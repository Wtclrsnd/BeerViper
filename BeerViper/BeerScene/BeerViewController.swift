//
//  BeerViewController.swift
//  BeerViper
//
//  Created by Emil Shpeklord on 07.07.2022.
//

import UIKit

final class BeerViewController: UIViewController, BeerViewProtocol {
    var presenter: BeerPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .red
        presenter.getData()
    }

    func presentData(vm: [Beer.InitForm.ViewModel]) {
        print(vm)
    }
}
