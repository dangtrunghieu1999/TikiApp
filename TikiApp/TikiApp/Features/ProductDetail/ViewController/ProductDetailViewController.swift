//
//  ProductDetailViewController.swift
//  TikiApp
//
//  Created by admin on 7/23/19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

class ProductDetailViewController: BaseUIViewController {
    
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
        setupNavigationBar()
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
    }
    
    // MARK: - Setup View
    
    @objc func touchBackButton() {
        navigationController?.popViewController(animated: true)
    }
    
    func setupNavigationBar() {
        let backTarget: Target = (target: self, selector: #selector(touchBackButton))
        let backBarButtonModel = BarButtonItemModel(Resource.Image.backButton, backTarget)
        addBarItems(with: [backBarButtonModel], type: .left)
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

// MARK: - UICollectionViewDelegate

extension ProductDetailViewController: UICollectionViewDelegate {
    
}

// MARK: - UICollectionViewDataSource

extension ProductDetailViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProductDataCollectionViewCell.productDetailId , for: indexPath) as? ProductDataCollectionViewCell else {
            return UICollectionViewCell()
        }
        return cell
    }
}

// MARK: - UICollectionViewDelegateFlowLayout

extension ProductDetailViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width  = UIScreen.main.bounds.width
        let heigth = UIScreen.main.bounds.height + 30
        return CGSize(width: width, height: heigth)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}


