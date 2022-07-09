//
//  BeerViewController.swift
//  BeerViper
//
//  Created by Emil Shpeklord on 07.07.2022.
//

import UIKit

final class BeerViewController: UIViewController, BeerViewProtocol {
    var presenter: BeerPresenterProtocol!

    private let reusableIdentifier = "BeerCell"

    private var beerList: [Beer.InitForm.ViewModel] = []

    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let width = UIScreen.main.bounds.width
        layout.sectionInset = UIEdgeInsets(top: 16, left: 20, bottom: 16, right: 20)
        layout.itemSize = CGSize(width: (width - 60) , height: width)
        layout.minimumInteritemSpacing = 10
        layout.minimumLineSpacing = 50

        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(BeerCollectionViewCell.self, forCellWithReuseIdentifier: reusableIdentifier)

        return collectionView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        presenter.getData()
    }

    func presentData(vm: [Beer.InitForm.ViewModel]) {
        beerList = vm
        collectionView.reloadData()
    }

    private func setUpUI() {
        view.addSubview(collectionView)
        collectionView.snp.makeConstraints({ make in
            make.leading.trailing.top.bottom.equalToSuperview()
        })
    }
}

extension BeerViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return beerList.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reusableIdentifier, for: indexPath) as! BeerCollectionViewCell
        let beer = beerList[indexPath.row]
        cell.setUpCellData(urlString: beer.imageURL, name: beer.name)

        return cell
    }
}
