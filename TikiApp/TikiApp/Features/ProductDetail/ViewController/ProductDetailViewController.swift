//
//  ProductDetailViewController.swift
//  TikiApp
//
//  Created by admin on 7/23/19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

class ProductDetailViewController: BaseUIViewController {
    
    // MARK: - SectionType
    
    fileprivate enum SectionType: Int {
        case infomation   = 0
        case benefits     = 1
        case preferential = 2
        case description  = 3
        case recoment     = 4
        
        static func numberSection() -> Int {
            return 5
        }
    }
    
    // MARK: - UI Elements
    
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = .white
        return collectionView
    }()
    
    
    // MARK: - View LifeCycle
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.navigationBar.setNavigationBar()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        layoutCollectionView()
        collectionViewRegister()
        
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.navigationBar.barTintColor = Theme.shared.barTintColor
    }
    
    // MARK: - Register CollectionView
    
    func collectionViewRegister() {
        collectionView.register(ProductDataCollectionViewCell.self, forCellWithReuseIdentifier: ProductDataCollectionViewCell.productDetailId)
        collectionView.register(BenefitsCollectionViewCell.self, forCellWithReuseIdentifier: BenefitsCollectionViewCell.benefitCellId)
        collectionView.register(PreferentialCollectionViewCell.self, forCellWithReuseIdentifier: PreferentialCollectionViewCell.preferentalCellId)
        collectionView.register(DescriptionCollectionViewCell.self, forCellWithReuseIdentifier: DescriptionCollectionViewCell.descriptionCellId)
        collectionView.register(RecommentCollectionViewCell.self, forCellWithReuseIdentifier: RecommentCollectionViewCell.recommentCellId)
    }
    
    // MARK: - Layout
    
    func layoutCollectionView(){
        view.addSubview(collectionView)
        collectionView.snp.makeConstraints { (make) in
            if #available(iOS 11, *) {
                make.top.equalTo(view.safeAreaLayoutGuide)
            }
            else {
                make.top.equalTo(topLayoutGuide.snp.bottom)
            }
            make.left.right.bottom.equalToSuperview()
        }
    }
}

// MARK: - UICollectionViewDataSource

extension ProductDetailViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return SectionType.numberSection()
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch SectionType(rawValue: indexPath.section) {
        case .infomation?:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProductDataCollectionViewCell.productDetailId , for: indexPath) as? ProductDataCollectionViewCell else {
                return UICollectionViewCell()
            }
            return cell
            
        case .benefits?:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BenefitsCollectionViewCell.benefitCellId, for: indexPath) as? BenefitsCollectionViewCell else {
                 return UICollectionViewCell()
            }
            return cell
        case .preferential?:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PreferentialCollectionViewCell.preferentalCellId, for: indexPath) as? PreferentialCollectionViewCell else {
                return UICollectionViewCell()
            }
            return cell
        case .description?:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DescriptionCollectionViewCell.descriptionCellId, for: indexPath) as? DescriptionCollectionViewCell else {
                return UICollectionViewCell()
            }
            return cell
        default :
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RecommentCollectionViewCell.recommentCellId, for: indexPath) as? RecommentCollectionViewCell else {
                return UICollectionViewCell()
            }
            return cell
        }
    }
}

// MARK: - UICollectionViewDelegateFlowLayout

extension ProductDetailViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width  = UIScreen.main.bounds.width
        let heigth = width + 280
        
        let heightPreferental = DataTableViewCell.caculateTotalCellHeight(Resource.dataPreferential)
        let heightDescription = DescriptionTableViewCell.caculateTotalCellHeight(Resource.dataDescription) + 260
        switch SectionType(rawValue: indexPath.section) {
        case .infomation?:
            return CGSize(width: width, height: heigth)
        case .benefits?:
            return CGSize(width: width, height: 130)
        case .preferential?:
            return CGSize(width: width, height: heightPreferental)
        case .description?:
            return CGSize(width: width, height: heightDescription)
        default:
            return CGSize(width: width, height: 300)
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}


