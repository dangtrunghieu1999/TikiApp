//
//  Resource.swift
//  TikiApp
//
//  Created by admin on 7/23/19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

public class Resource {
    
    public class Image {
        public static var backButton:  UIImage? = UIImage(named: "Back")
        public static var cartButton:  UIImage? = UIImage(named: "Cart")
        public static var closeButton: UIImage? = UIImage(named: "Close")
        public static var imageTemp:   UIImage? = UIImage(named: "photo1")
        
    }
    public class ItemProduct {
        public static var nameLabel = "Máy Đọc Sách Kindle PaperWhite 2018 (7th) - Hàng Chính Hãng"
        public static var priceLabel = "590,000 VND"
        public static var saleLabel = "Khuyến mãi còn 9 ngày "
        public static var provideLabel = "Cung cấp bởi "
        public static var nameProvideLabel = "Tiki Trading"
        public static var changeButton = "Thay đổi"
        public static var chooseButton = "Chọn mua"
        public static var address = "Bạn ơi hãy chọn địa chỉ nhận hàng để được dự báo thời gian giao hàng một cách chính xác"
    }
    
    public static var hotlineLabel = "HOTLINE: 1900 6035 (1.000đ/phút, 8-21h cả T7,CN)"
    public static var refundLabel = "Hoàn tiền cho thành viên TikiNOW (tối đa 100k/tháng) 1%(999 đ) Chi tiết"
    public static var saleLabel = "Nhập mã MOMOBH giảm 50k cho đơn hàng Làm Đẹp Sức Khoẻ từ 300k khi thanh toán qua Ví MoMo. Mỗi khách hàng sử dụng một lần. Số lượng có hạn.  "
    public static var promotionLabel = "Tiki gửi đến khách hàng mới coupon TIKINEW07 - Giảm 20.000VNĐ cho đơn hàng từ 200.000VNĐ. Chỉ áp dụng cho đơn hàng đầu tiên tại App TIKI. Số lượng có hạn"
    public static var promotionLimitLabel = "Tiki gửi đến khách hàng mới coupon TIKINEW07 - Giảm 20.000VNĐ cho đơn hàng từ 200.000VNĐ. Chỉ áp dụng cho đơn hàng đầu tiên tại App TIKI. Số lượng có hạn"
    public static var bonusPromotionLabel = "Tiki gửi đến khách hàng mới coupon TIKINEW07 - Giảm 20.000VNĐ cho đơn hàng từ 200.000VNĐ. Chỉ áp dụng cho đơn hàng đầu tiên tại App TIKI. Số lượng có hạn"
    public static var bonusLabel = "Tiki gửi đến khách hàng mới coupon TIKINEW07 - Giảm 20.000VNĐ cho đơn hàng từ 200.000VNĐ. Chỉ áp dụng cho đơn hàng đầu tiên tại App TIKI. Số lượng có hạn"
    public static var address = "Bạn ơi hãy chọn địa chỉ nhận hàng để được dự báo thời gian giao hàng một cách chính xác"
    
    
    public static var dataPreferential: [String] = [Resource.hotlineLabel,
                                      Resource.refundLabel,
                                      Resource.saleLabel,
                                      Resource.promotionLabel,
                                      Resource.promotionLimitLabel,
                                      Resource.bonusPromotionLabel,
                                      Resource.bonusLabel,
                                      Resource.address
                                      ]
    
    
    public static var usb = "USB interface: Yes"
    public static var mounting = "Wall Mounting Speccifications: 100x100mm"
    public static var function = "HDCP function: support"
    public static var DVI = "DVI: 1"
    public static var base = "Lift"
    public static var ratio = "Screen ratio: 16:9"
    public static var time = "Response time: 4ms"
    public static var range = "Response range: &lt;5ms"
    public static var contrast = "Contrast: 1000:1"
    public static var speaker = "Built-in speaker:..."
    
    
    public static var dataDescription: [String] = [Resource.usb,
                                                   Resource.mounting,
                                                   Resource.function,
                                                   Resource.DVI,
                                                   Resource.base,
                                                   Resource.ratio,
                                                   Resource.time,
                                                   Resource.range,
                                                   Resource.contrast,
                                                   Resource.speaker
    ]
}

