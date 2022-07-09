//
//  BeerCollectionViewCell.swift
//  BeerViper
//
//  Created by Emil Shpeklord on 09.07.2022.
//

import UIKit
import SnapKit
import Kingfisher

final class BeerCollectionViewCell: UICollectionViewCell {
    private lazy var itemStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fill
        return stack
    }()

    private lazy var beerImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .systemPink
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    private lazy var label: UILabel = {
        let label = UILabel()
        label.text = "text"
        label.font = .boldSystemFont(ofSize: 28)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        label.backgroundColor = .systemPink
        return label
    }()

    //MARK: - Init

    override init(frame: CGRect) {
        super.init(frame: frame)

        setUpUI()
    }



    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setUpUI() {
        contentView.addSubview(itemStack)
        itemStack.addArrangedSubview(beerImageView)
        itemStack.addArrangedSubview(label)

        backgroundColor = .clear
        layer.cornerRadius = 12
        layer.shadowOpacity = 0.3
        layer.shadowRadius = 4
        layer.shadowOffset = CGSize(width: 0, height: 2)
        layer.shadowColor = UIColor.systemGray.cgColor

        contentView.layer.cornerRadius = 12
        contentView.clipsToBounds = true

        itemStack.snp.makeConstraints({ make in
            make.leading.trailing.top.bottom.equalToSuperview()
        })
    }

    func setUpCellData(urlString: String, name: String) {
        guard let url = URL(string: urlString) else { return }
        beerImageView.kf.setImage(with: url)
        label.text = name
    }
}
