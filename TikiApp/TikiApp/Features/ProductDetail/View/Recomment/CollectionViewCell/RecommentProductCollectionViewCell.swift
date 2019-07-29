//
//  RecommentProductCollectionViewCell.swift
//  TikiApp
//
//  Created by admin on 7/26/19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

class RecommentProductCollectionViewCell: UICollectionViewCell {
 
    public static let recommentProductCell = "RecommentProductCollectionViewCell"
    
    // MARK: -  UI Elements
    private var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.image = Resource.Image.imageIPhone
        return imageView
    }()
    
    private var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Ốp Lưng Dành Cho Điện Thoại Asus Zenfone4 cao cấp đẹp"
        label.font = Dimension.shared.captionFont
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
    
    override init(frame: CGRect) {
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
    
    func layoutImageView() {
        let height = (UIScreen.main.bounds.width - 12)/2 - 100
        addSubview(imageView)
        imageView.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(50)
            make.right.equalToSuperview().offset(-50)
            make.height.equalTo(height)
            make.top.equalToSuperview()
        }
    }
    
    func layoutNameLabel() {
        addSubview(nameLabel)
        nameLabel.snp.makeConstraints { (make) in
            make.top.equalTo(imageView.snp.bottom).offset(Dimension.shared.mediumVerticalMargin)
            make.left.equalToSuperview().offset(Dimension.shared.mediumHorizontalMargin)
            make.right.equalToSuperview().offset(-Dimension.shared.mediumHorizontalMargin)
        }
    }
    
    func layoutPriceLabel() {
        addSubview(priceLabel)
        priceLabel.snp.makeConstraints { (make) in
            make.top.equalTo(nameLabel.snp.bottom).offset(Dimension.shared.mediumVerticalMargin)
            make.left.equalToSuperview().offset(Dimension.shared.mediumHorizontalMargin)
        }
    }
}
