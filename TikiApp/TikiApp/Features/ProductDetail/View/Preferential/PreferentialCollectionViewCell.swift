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
   
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.register(DataTableViewCell.self, forCellReuseIdentifier: DataTableViewCell.dataCell)
        return tableView
    }()
   
    
    // MARK: - View LifeCycle
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        layoutLineView()
        layoutNameLabel()
        layoutTableView()
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
            make.top.equalTo(nameLabel.snp.bottom).offset(Dimension.shared.largeVerticalMargin)
            make.left.equalToSuperview().offset(Dimension.shared.mediumVerticalMargin)
            make.right.equalToSuperview().offset(-Dimension.shared.mediumVerticalMargin)
            make.bottom.equalToSuperview()
        }
    }
}

// MARK: - UITableViewDelegate

extension PreferentialCollectionViewCell: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return DataTableViewCell.caculteCellHeight(by: Resource.dataPreferential[indexPath.row])
    }
}

// MARK: - UITableViewDataSource
extension PreferentialCollectionViewCell: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Resource.dataPreferential.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: DataTableViewCell.dataCell, for: indexPath) as? DataTableViewCell else {
            return UITableViewCell()
        }
        
        cell.nameLabel.text = Resource.dataPreferential[indexPath.row]
        cell.selectionStyle = .none
        return cell
    }
}


