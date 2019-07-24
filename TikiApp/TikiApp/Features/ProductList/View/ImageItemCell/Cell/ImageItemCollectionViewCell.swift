//
//  ImageItemCollectionViewCell.swift
//  TikiApp
//
//  Created by admin on 7/23/19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

class ImageItemCollectionViewCell: UICollectionViewCell {
    
    public static let imageItemCellId = "ImageItemCollectionViewCell"
    
    // MARK: - UI Elements
    
    public var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = Resource.Image.imageTemp
        return imageView
    }()
    
    public var nameLabel: UILabel = {
        let label = UILabel()
        label.text = Resource.ItemProduct.nameLabel
        label.font = Dimension.shared.smallTitleFont
        label.numberOfLines = 2
        return label
    }()
    
    public var priceLabel: UILabel = {
        let label = UILabel()
        label.text = Resource.ItemProduct.priceLabel
        label.font = Dimension.shared.smallPriceFont
        label.textAlignment = .left
        label.numberOfLines = 1
        return label
    }()
    
    // MARK: - View LifeCycle
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        layoutImageView()
        layoutNameLabel()
        layoutPriceLabel()
        
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override open func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    
    // MARK: - Layout
    
    func layoutImageView(){
        let height = (UIScreen.main.bounds.width - 12)/2 - 20
        addSubview(imageView)
        imageView.snp.makeConstraints { (make) in
            make.top.equalToSuperview()
            make.left.equalToSuperview().offset(Dimension.shared.mediumHorizontalMargin)
            make.right.equalToSuperview().offset(-Dimension.shared.mediumHorizontalMargin)
            make.height.equalTo(height)
        }
    }
    func layoutNameLabel(){
        
        addSubview(nameLabel)
        nameLabel.snp.makeConstraints { (make) in
            make.top.equalTo(imageView.snp.bottom).offset(Dimension.shared.largeVerticalMargin)
            make.left.equalTo(imageView.snp.left)
            make.right.equalTo(imageView.snp.right)
        }
    }
    
    func layoutPriceLabel(){
        addSubview(priceLabel)
        priceLabel.snp.makeConstraints { (make) in
            make.top.equalTo(nameLabel.snp.bottom).offset(Dimension.shared.smallVerticalMargin)
            make.left.equalTo(nameLabel.snp.left)
        }
    }
}

