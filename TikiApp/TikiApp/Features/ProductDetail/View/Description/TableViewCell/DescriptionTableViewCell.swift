//
//  DescriptionTableViewCell.swift
//  TikiApp
//
//  Created by admin on 7/24/19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

class DescriptionTableViewCell: UITableViewCell {

    
    // MARK: - Variables
    
    public static let descriptionCellId = "DescriptionTableViewCell"
    
    // MARK: - UI Elements
    public var descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = Dimension.shared.captionFont
        return label
    }()
    
    // MARK: - View LifeCycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layoutDescriptionLabel()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        layoutDescriptionLabel()
    }
    
    static func caculteCellHeight(by description: String) -> CGFloat {
        // caculate height for description label
        
        let desWidth = UIScreen.main.bounds.width - 20
        let desHeight = description.height(withConstrainedWidth: desWidth, font: UIFont.systemFont(ofSize: 13))
        
        let estimateLableHeight = desHeight + Dimension.shared.smallVerticalMargin
        
        return estimateLableHeight
    }
    
    static func caculateTotalCellHeight(_ array: [String]) -> CGFloat {
        var total: CGFloat = 10
        for item in array {
            total += caculteCellHeight(by: item)
        }
        return total
    }
    
    // MARK: - Layout
    
    func layoutDescriptionLabel() {
        addSubview(descriptionLabel)
        descriptionLabel.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
    }

}
