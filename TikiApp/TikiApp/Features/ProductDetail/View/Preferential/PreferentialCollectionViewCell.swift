//
//  PreferentialCollectionViewCell.swift
//  TikiApp
//
//  Created by admin on 7/23/19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

class PreferentialCollectionViewCell: UICollectionViewCell {
    
    public static let preferentalCellId = "PreferentialCollectionViewCell"
    
    // MARK: - UI Elements
    
    private var lineView: UIView = {
        let view = UIView()
        view.backgroundColor = Theme.shared.lineViewColor
        return view
    }()
    
    private var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Ưu Đãi Liên Quan"
        label.font = Dimension.shared.titleFont
        return label
    }()
    
    private var hotlineLabel: UILabel = {
        let label = UILabel()
        label.text = "HOTLINE: 1900 6035 (1.000đ/phút, 8-21h cả T7,CN)"
        label.font = Dimension.shared.captionFont
        label.numberOfLines = 0
        return label
    }()
    
    private var refundLabel: UILabel = {
        let label = UILabel()
        let text = "Hoàn tiền cho thành viên TikiNOW (tối đa 100k/tháng) 1%(999 đ) Chi tiết"
        label.attributedText = CustomAttributed.lineSpacingText(text)
        label.font = Dimension.shared.captionFont
        label.numberOfLines = 0
        return label
    }()
    
    private var promotionCodeLabel: UILabel = {
        let label = UILabel()
        let text = "Nhập mã MOMOBH giảm 50k cho đơn hàng Làm Đẹp Sức Khoẻ từ 300k khi thanh toán qua Ví MoMo. Mỗi khách hàng sử dụng một lần. Số lượng có hạn. "
        label.attributedText = CustomAttributed.lineSpacingText(text)
        label.font = Dimension.shared.captionFont
        label.numberOfLines = 0
        return label
    }()
    
    private var promotionLimitLabel: UILabel = {
        let label = UILabel()
        let text = "Tiki gửi đến khách hàng mới coupon TIKINEW07 - Giảm 20.000VNĐ cho đơn hàng từ 200.000VNĐ. Chỉ áp dụng cho đơn hàng đầu tiên tại App TIKI. Số lượng có hạn"
        label.attributedText = CustomAttributed.lineSpacingText(text)
        label.font = Dimension.shared.captionFont
        label.numberOfLines = 0
        return label
    }()
    
    private var voucherLabel: UILabel = {
        let label = UILabel()
        let text = "Tiki gửi đến khách hàng mới coupon TIKINEW07 - Giảm 20.000VNĐ cho đơn hàng từ 200.000VNĐ. Chỉ áp dụng cho đơn hàng đầu tiên tại App TIKI. Số lượng có hạn"
        label.attributedText = CustomAttributed.lineSpacingText(text)
        label.font = Dimension.shared.captionFont
        label.numberOfLines = 0
        return label
    }()
    
    private var freeShipLabel: UILabel = {
        let label = UILabel()
        let text = "Tiki gửi đến khách hàng mới coupon TIKINEW07 - Giảm 20.000VNĐ cho đơn hàng từ 200.000VNĐ. Chỉ áp dụng cho đơn hàng đầu tiên tại App TIKI. Số lượng có hạn"
        label.attributedText = CustomAttributed.lineSpacingText(text)
        label.font = Dimension.shared.captionFont
        label.numberOfLines = 0
        return label
    }()
    
    private var bonusPromotion: UILabel = {
        let label = UILabel()
        let text = "Tiki gửi đến khách hàng mới coupon TIKINEW07 - Giảm 20.000VNĐ cho đơn hàng từ 200.000VNĐ. Chỉ áp dụng cho đơn hàng đầu tiên tại App TIKI. Số lượng có hạn"
        label.attributedText = CustomAttributed.lineSpacingText(text)
        label.font = Dimension.shared.captionFont
        label.numberOfLines = 0
        return label
    }()
    
    // MARK: - View LifeCycle
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        layoutLineView()
        layoutNameLabel()
        layoutHolineLabel()
        layoutRefundLabel()
        layoutPromotionCodeLabel()
        layoutPromotionLimitLabel()
        layoutVoucherLabel()
        layoutFreeShipLabel()
        layoutBonusPromotionLabel()
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
        }
    }
    
    func layoutHolineLabel() {
        addSubview(hotlineLabel)
        hotlineLabel.snp.makeConstraints { (make) in
            make.top.equalTo(nameLabel.snp.bottom).offset(Dimension.shared.largeVerticalMargin)
            make.left.equalTo(nameLabel.snp.left)
            make.right.equalToSuperview().offset(-Dimension.shared.mediumHorizontalMargin)
        }
    }
    
    func layoutRefundLabel() {
        addSubview(refundLabel)
        refundLabel.snp.makeConstraints { (make) in
            make.top.equalTo(hotlineLabel.snp.bottom).offset(Dimension.shared.mediumVerticalMargin)
            make.left.equalTo(nameLabel.snp.left)
            make.right.equalToSuperview().offset(-Dimension.shared.mediumHorizontalMargin)
        }
    }
    
    func layoutPromotionCodeLabel() {
        addSubview(promotionCodeLabel)
        promotionCodeLabel.snp.makeConstraints { (make) in
            make.top.equalTo(refundLabel.snp.bottom).offset(Dimension.shared.mediumVerticalMargin)
            make.left.equalTo(nameLabel.snp.left)
            make.right.equalToSuperview().offset(-Dimension.shared.mediumHorizontalMargin)
        }
    }
    
    func layoutPromotionLimitLabel(){
        addSubview(promotionLimitLabel)
        promotionLimitLabel.snp.makeConstraints { (make) in
            make.top.equalTo(promotionCodeLabel.snp.bottom).offset(Dimension.shared.mediumVerticalMargin)
            make.left.equalTo(nameLabel.snp.left)
            make.right.equalToSuperview().offset(-Dimension.shared.mediumHorizontalMargin)
        }
    }

    func layoutVoucherLabel(){
        addSubview(voucherLabel)
        voucherLabel.snp.makeConstraints { (make) in
            make.top.equalTo(promotionLimitLabel.snp.bottom).offset(Dimension.shared.mediumVerticalMargin)
            make.left.equalTo(nameLabel.snp.left)
            make.right.equalToSuperview().offset(-Dimension.shared.mediumHorizontalMargin)
        }
    }
    
    func layoutFreeShipLabel() {
        addSubview(freeShipLabel)
        freeShipLabel.snp.makeConstraints { (make) in
            make.top.equalTo(voucherLabel.snp.bottom).offset(Dimension.shared.mediumVerticalMargin)
            make.left.equalTo(nameLabel.snp.left)
            make.right.equalToSuperview().offset(-Dimension.shared.mediumHorizontalMargin)
        }
    }
    
    func layoutBonusPromotionLabel() {
        addSubview(bonusPromotion)
        bonusPromotion.snp.makeConstraints { (make) in
            make.top.equalTo(freeShipLabel.snp.bottom).offset(Dimension.shared.mediumVerticalMargin)
            make.left.equalTo(nameLabel.snp.left)
            make.right.equalToSuperview().offset(-Dimension.shared.mediumHorizontalMargin)
        }
    }
    
}
