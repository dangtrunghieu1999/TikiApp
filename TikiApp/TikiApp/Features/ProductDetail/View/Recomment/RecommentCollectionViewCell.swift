//
//  RecommentCollectionViewCell.swift
//  TikiApp
//
//  Created by admin on 7/25/19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

class RecommentCollectionViewCell: UICollectionViewCell {
    
    public static let recommentCellId = "RecommentCollectionViewCell"
    
    // MARK: - UI Elements
    
    private var lineView: UIView = {
        let view = UIView()
        view.backgroundColor = Theme.shared.lineViewColor
        return view
    }()
    
    private var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Sản Phẩm Tương Tự"
        label.font = Dimension.shared.titleFont
        return label
    }()
    
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.backgroundColor = .white
        
        collectionView.register(RecommentProductCollectionViewCell.self, forCellWithReuseIdentifier: RecommentProductCollectionViewCell.recommentProductCell)
        return collectionView
    }()
    
    // MARK: - View LifeCycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layoutLineView()
        layoutTitleLabel()
        layoutCollectionView()
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
            make.top.equalToSuperview().offset(20)
            make.left.right.equalToSuperview()
            make.height.equalTo(10)
        }
    }
    
    func layoutTitleLabel() {
        
        addSubview(titleLabel)
        titleLabel.snp.makeConstraints { (make) in
            make.top.equalTo(lineView.snp.bottom).offset(Dimension.shared.largeVerticalMargin)
            make.left.equalToSuperview().offset(Dimension.shared.mediumHorizontalMargin)
        }
    }
    
    func layoutCollectionView() {
        addSubview(collectionView)
        collectionView.snp.makeConstraints { (make) in
            make.top.equalTo(titleLabel.snp.bottom).offset(5)
            make.left.right.bottom.equalToSuperview()
        }
    }
    
}

extension RecommentCollectionViewCell: UICollectionViewDelegateFlowLayout {
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (UIScreen.main.bounds.width - 12)/2 - 20
        let height = collectionView.bounds.height - 30
        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
}

extension RecommentCollectionViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RecommentProductCollectionViewCell.recommentProductCell, for: indexPath) as? RecommentProductCollectionViewCell else {
            return UICollectionViewCell()
        }
        return cell
    }
    
    
}
