//
//  ProductDetailCollectionViewCell.swift
//  TikiApp
//
//  Created by admin on 7/23/19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

class ProductDetailCollectionViewCell: UICollectionViewCell {
    
    public static let productDetailId = "ProductDetailCollectionViewCell"
    
    // MARK: - UI Elements
    
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView     = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.dataSource = self
        collectionView.delegate   = self
        collectionView.backgroundColor = .white
        collectionView.isPagingEnabled = true
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.register(ImageCollectionViewCell.self,
                                forCellWithReuseIdentifier: ImageCollectionViewCell.imageCellId)
        return collectionView
    }()
    
    private var nameLabel: UILabel = {
        let label = UILabel()
        let attributedString = NSMutableAttributedString(string: Resource.ItemProduct.nameLabel)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 5
        attributedString.addAttribute(NSAttributedString.Key.paragraphStyle,
                                      value: paragraphStyle,
                                      range:NSMakeRange(0, attributedString.length))
        label.attributedText = attributedString
        label.numberOfLines = 0
        label.font = Dimension.shared.titleFont
        label.textAlignment = .left
        return label
    }()
    
    private var priceLabel: UILabel = {
        let label = UILabel()
        label.text = Resource.ItemProduct.priceLabel
        label.font = Dimension.shared.priceFont
        label.numberOfLines = 1
        return label
    }()
    
    private var saleLabel: UILabel = {
        let label = UILabel()
        label.text = Resource.ItemProduct.saleLabel
        label.font = Dimension.shared.captionFont
        return label
    }()
    
    private var provideLabel: UILabel = {
        let label = UILabel()
        let provideAttribute = [ NSAttributedString.Key.font: Dimension.shared.captionFont ]
        let provideString = NSMutableAttributedString(string: Resource.ItemProduct.provideLabel, attributes: provideAttribute )
        
        let nameProdiveAttribute = [ NSAttributedString.Key.font: Dimension.shared.captionFontSemiBold ]
        let nameProdiveString = NSMutableAttributedString(string: Resource.ItemProduct.nameProvideLabel,attributes: nameProdiveAttribute)
        
        provideString.append(nameProdiveString)
        label.attributedText = provideString
        
        return label
    }()
    
    private var changeButton: UIButton = {
        let button = UIButton()
        button.setTitle(Resource.ItemProduct.changeButton, for: .normal)
        button.setTitleColor(Theme.shared.changeButtonColor, for: .normal)
        button.titleLabel?.font = Dimension.shared.captionButtonFont
        return button
    }()
    
    private var chooseBuyButton: UIButton = {
        let button = UIButton()
        button.setTitle(Resource.ItemProduct.chooseButton, for: .normal)
        button.backgroundColor = Theme.shared.chooseButtonColor
        button.titleLabel?.font = Dimension.shared.titleButtonFont
        button.setTitleColor(UIColor.white, for: .normal)
        return button
    }()
    
    private var containerView: UIView = {
        let view = UIView()
        view.backgroundColor = Theme.shared.containerViewColor
        return view
    }()
    
    private var descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = Resource.ItemProduct.address
        label.font = Dimension.shared.captionFont
        label.numberOfLines = 0
        return label
    }()
    
    // MARK: - View LifeCycle
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        layoutCollectionView()
        layoutNameLabel()
        layoutPriceLabel()
        layoutSaleLabel()
        layoutProvideLabel()
        layoutChangeButton()
        layoutChooseBuyButton()
        layoutContainerView()
        layoutDescriptionLabel()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override open func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    // MARK: - Layout
    
    func layoutCollectionView() {
        let height = (UIScreen.main.bounds.width - 50)
        addSubview(collectionView)
        collectionView.snp.makeConstraints { (make) in
            make.left.right.equalToSuperview()
            make.top.equalToSuperview()
            make.height.equalTo(height)
        }
    }
    
    func layoutNameLabel() {
        addSubview(nameLabel)
        nameLabel.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(Dimension.shared.mediumHorizontalMargin)
            make.right.equalToSuperview().offset(-Dimension.shared.mediumHorizontalMargin)
            make.top.equalTo(collectionView.snp.bottom).offset(Dimension.shared.smallVerticalMargin)
        }
    }
    
    func layoutPriceLabel() {
        addSubview(priceLabel)
        priceLabel.snp.makeConstraints { (make) in
            make.top.equalTo(nameLabel.snp.bottom).offset(Dimension.shared.largeVerticalMargin_25)
            make.left.equalTo(nameLabel.snp.left)
        }
    }
    
    func layoutSaleLabel() {
        addSubview(saleLabel)
        saleLabel.snp.makeConstraints { (make) in
            make.top.equalTo(priceLabel.snp.bottom).offset(Dimension.shared.smallVerticalMargin)
            make.left.equalTo(nameLabel.snp.left)
        }
    }
    
    func layoutProvideLabel() {
        addSubview(provideLabel)
        provideLabel.snp.makeConstraints { (make) in
            make.top.equalTo(saleLabel.snp.bottom).offset(Dimension.shared.largeVerticalMargin)
            make.left.equalTo(nameLabel.snp.left)
        }
    }
    func layoutChangeButton() {
        addSubview(changeButton)
        changeButton.snp.makeConstraints { (make) in
            make.centerY.equalTo(provideLabel)
            make.right.equalToSuperview().offset(-Dimension.shared.mediumHorizontalMargin)
        }
    }
    
    func layoutChooseBuyButton() {
        addSubview(chooseBuyButton)
        chooseBuyButton.snp.makeConstraints { (make) in
            make.top.equalTo(provideLabel.snp.bottom).offset(Dimension.shared.largeVerticalMargin_25)
            make.left.equalToSuperview().offset(Dimension.shared.mediumHorizontalMargin)
            make.right.equalToSuperview().offset(-Dimension.shared.mediumHorizontalMargin)
            make.height.equalTo(50)
            
        }
    }
    
    func layoutContainerView() {
        addSubview(containerView)
        containerView.snp.makeConstraints { (make) in
            make.top.equalTo(chooseBuyButton.snp.bottom).offset(Dimension.shared.smallVerticalMargin)
            make.left.equalToSuperview().offset(Dimension.shared.mediumHorizontalMargin)
            make.right.equalToSuperview().offset(-Dimension.shared.mediumVerticalMargin)
            make.height.equalTo(80)
        }
    }
    
    func layoutDescriptionLabel() {
        containerView.addSubview(descriptionLabel)
        descriptionLabel.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(Dimension.shared.normalVerticalMargin)
            make.left.equalToSuperview().offset(Dimension.shared.normalHorizontalMargin)
            make.right.equalToSuperview().offset(-Dimension.shared.normalHorizontalMargin)
            
        }
    }
    
}


// MARK: - UICollectionViewDataSource

extension ProductDetailCollectionViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ImageCollectionViewCell.imageCellId, for: indexPath) as? ImageCollectionViewCell else {
            return UICollectionViewCell()
        }
        return cell
    }
    
}
// MARK: - UICollectionViewDelegate

extension ProductDetailCollectionViewCell: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("touch")
    }
}

// MARK: - UICollectionViewDelegateFlowLayout

extension ProductDetailCollectionViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: collectionView.bounds.width, height: collectionView.bounds.height)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
