//
//  SearchResultCell.swift
//  AppStoreLBTA
//
//  Created by Burit Boonkorn on 1/8/2566 BE.
//

import UIKit

class SearchResultCell: UICollectionViewCell {
    public static let identifier = "SearchResultCell"
    
    let appIconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .red
        imageView.layer.masksToBounds = true
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 12
        
        return imageView
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "APP NAME"
        
        return label
    }()
    
    let categoryLabel: UILabel = {
        let label = UILabel()
        label.text = "Photo & Video"
        
        return label
    }()
    
    let ratingsLabel: UILabel = {
        let label = UILabel()
        label.text = "9.26M"
        
        return label
    }()
    
    let getButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("GET", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 14)
        button.backgroundColor = UIColor(white: 0.95, alpha: 1)
        button.layer.cornerRadius = 16
        
        return button
    }()
        
    lazy var infoTopStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [
            appIconImageView,
            VerticalStackView(arrangedSubviews: [
                nameLabel,
                categoryLabel,
                ratingsLabel
            ]),
            getButton
        ])
        stackView.spacing = 12
        stackView.alignment = .center
        
        return stackView
    }()
    
    lazy var screentshot1ImageView = self.createScreenshotImageView()
    lazy var screentshot2ImageView = self.createScreenshotImageView()
    lazy var screentshot3ImageView = self.createScreenshotImageView()
    
    
    func createScreenshotImageView() -> UIImageView {
        let imageView = UIImageView()
        imageView.backgroundColor = .blue
        return imageView
    }
    
    lazy var screenshotsStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [
            screentshot1ImageView,
            screentshot2ImageView,
            screentshot3ImageView
        ])
        stackView.distribution = .fillEqually
        stackView.spacing = 12
        
        return stackView
    }()
    
    lazy var overallStackView = VerticalStackView(
        arrangedSubviews: [infoTopStackView, screenshotsStackView],
        spacing: 16
    )
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(overallStackView)
        
        configureConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureConstraints() {
        overallStackView.fillSuperview(padding: .init(top: 16, left: 16, bottom: 16, right: 16))
        
        let imageViewConstraints = [
            appIconImageView.widthAnchor.constraint(equalToConstant: 64),
            appIconImageView.heightAnchor.constraint(equalToConstant: 64)
        ]
        
        let getButtonConstraints = [
            getButton.widthAnchor.constraint(equalToConstant: 80)
        ]
        
        NSLayoutConstraint.activate(imageViewConstraints)
        NSLayoutConstraint.activate(getButtonConstraints)
    }
}
