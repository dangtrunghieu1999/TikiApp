//
//  DescriptionCollectionViewCell.swift
//  TikiApp
//
//  Created by admin on 7/24/19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

class DescriptionCollectionViewCell: UICollectionViewCell {
    
    
    public static let descriptionCellId = "DescriptionCollectionViewCell"
    
    // MARK: - UI Elements
    
    private var lineView: UIView = {
        let view = UIView()
        view.backgroundColor = Theme.shared.lineViewColor
        return view
    }()
    
    private var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Mô Tả Sản Phẩm"
        label.font = Dimension.shared.titleFont
        return label
    }()
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.separatorStyle = .none
        tableView.register(DescriptionTableViewCell.self, forCellReuseIdentifier: DescriptionTableViewCell.descriptionCellId)
        return tableView
    }()
    
    private var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.image = Resource.Image.imagePhoto
        return imageView
    }()
    
    private var gradientImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleToFill
        imageView.image = Resource.Image.imageGradient
        return imageView
    }()
    
    private var addButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .clear
        button.setTitle("Xem chi tiết", for: .normal)
        button.titleLabel?.font = Dimension.shared.captionFont
        button.setTitleColor(.blue, for: .normal)
        return button
    }()
    
    
    
    // MARK: - View LifeCycle
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        layoutLineView()
        layoutNameLabel()
        layoutTableView()
        layoutImageView()
        layoutGradientImageView()
        layoutAddButton()
        
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
    
    func layoutTableView() {
        addSubview(tableView)
        tableView.snp.makeConstraints { (make) in
            make.top.equalTo(nameLabel.snp.bottom).offset(Dimension.shared.largeVerticalMargin_25)
            make.left.equalToSuperview().offset(Dimension.shared.mediumHorizontalMargin)
            make.right.equalToSuperview().offset(-Dimension.shared.mediumHorizontalMargin)
            make.height.equalTo(DescriptionTableViewCell.caculateTotalCellHeight(Resource.dataDescription))
        }
    }
    
    func layoutImageView() {
        addSubview(imageView)
        imageView.snp.makeConstraints { (make) in
            make.top.equalTo(tableView.snp.bottom).offset(30)
            make.left.equalToSuperview().offset(Dimension.shared.mediumHorizontalMargin)
            make.right.equalToSuperview().offset(-Dimension.shared.mediumHorizontalMargin)
            make.bottom.equalToSuperview()
        }
    }
    
    func layoutGradientImageView() {
        addSubview(gradientImageView)
        gradientImageView.snp.makeConstraints { (make) in
            make.top.equalTo(tableView.snp.bottom).offset(30)
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }
    
    func layoutAddButton() {
        addSubview(addButton)
        addButton.snp.makeConstraints { (make) in
            make.bottom.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }
}

extension DescriptionCollectionViewCell: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return DescriptionTableViewCell.caculteCellHeight(by: Resource.dataDescription[indexPath.row])
    }
}

extension DescriptionCollectionViewCell: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Resource.dataDescription.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: DescriptionTableViewCell.descriptionCellId, for: indexPath) as? DescriptionTableViewCell else {
            return UITableViewCell()
        }
        cell.descriptionLabel.text = Resource.dataDescription[indexPath.row]
        cell.selectionStyle = .none
        return cell
    }
    
    
}
