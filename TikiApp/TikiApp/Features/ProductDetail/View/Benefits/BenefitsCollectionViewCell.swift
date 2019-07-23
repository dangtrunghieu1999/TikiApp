//
//  BenefitsCollectionViewCell.swift
//  TikiApp
//
//  Created by admin on 7/23/19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

class BenefitsCollectionViewCell: UICollectionViewCell {
    
    public static let benefitCellId = "BenefitsCollectionViewCell"
    
    // MARK: - UI Elements
    
    private var lineView: UIView = {
        let view = UIView()
        view.backgroundColor = Theme.shared.lineViewColor
        return view
    }()
    
    private var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Quyền lợi khách hàng"
        label.font = Dimension.shared.titleFont
        return label
    }()
    
    
    private var refundMoneyLabel: UILabel = {
        let label = UILabel()
        label.text = "Tiki hoàn tiền 111% nếu phát hiện hàng giả"
        label.font = Dimension.shared.captionFont
        return label
    }()
    
    
    private var commitLabel: UILabel = {
        let label = UILabel()
        label.text = "Cam kết hàng chính hiệu"
        label.font = Dimension.shared.captionFont
        return label
    }()
    
    // MARK: - View LifeCycle
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        layoutLineView()
        layoutNameLabel()
        layoutRefundMoneyLabel()
        layoutCommitLabel()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override open func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    // MARK: - Layout
    
    func layoutLineView() {
        addSubview(lineView)
        lineView.snp.makeConstraints { (make) in
            make.top.equalToSuperview()
            make.left.right.equalToSuperview()
            make.height.equalTo(10)
        }
    }
    
    func layoutNameLabel() {
        addSubview(nameLabel)
        nameLabel.snp.makeConstraints { (make) in
            make.top.equalTo(lineView.snp.bottom).offset(Dimension.shared.largeVerticalMargin)
            make.left.equalToSuperview().offset(Dimension.shared.mediumHorizontalMargin)
            make.right.equalToSuperview().offset(-Dimension.shared.mediumHorizontalMargin)
        }
    }
    
    func layoutRefundMoneyLabel() {
        addSubview(refundMoneyLabel)
        refundMoneyLabel.snp.makeConstraints { (make) in
            make.top.equalTo(nameLabel.snp.bottom).offset(Dimension.shared.largeVerticalMargin)
            make.left.equalTo(nameLabel.snp.left)
        }
    }
    
    func layoutCommitLabel() {
        addSubview(commitLabel)
        commitLabel.snp.makeConstraints { (make) in
            make.top.equalTo(refundMoneyLabel.snp.bottom).offset(Dimension.shared.largeVerticalMargin_25)
            make.left.equalTo(nameLabel.snp.left)
        }
    }
}
