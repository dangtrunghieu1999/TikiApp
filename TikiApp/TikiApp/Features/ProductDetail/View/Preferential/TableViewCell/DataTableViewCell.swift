//
//  DataTableViewCell.swift
//  TikiApp
//
//  Created by admin on 7/24/19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

class DataTableViewCell: UITableViewCell {
    
    public static let dataCell = "DataTableViewCell"
    
    // MARK: - UI Elements
    
    public var nameLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = Dimension.shared.captionFont
        return label
    }()
    
    // MARK: - View LifeCycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layoutNameLabel()

    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        layoutNameLabel()

    }
    
    static func caculteCellHeight(by description: String) -> CGFloat {
        // caculate height for description label
        
        let desWidth = UIScreen.main.bounds.width - 20
        let desHeight = description.height(withConstrainedWidth: desWidth, font: UIFont.systemFont(ofSize: 13))
        
        let estimateLableHeight = desHeight + Dimension.shared.mediumVerticalMargin
        
        return estimateLableHeight
    }
    
    // MARK: - Layout
    
    func layoutNameLabel() {
        addSubview(nameLabel)
        nameLabel.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
    }
    
}
