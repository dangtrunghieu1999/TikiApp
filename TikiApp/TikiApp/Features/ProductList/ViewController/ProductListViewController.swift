//
//  ViewController.swift
//  TikiApp
//
//  Created by admin on 7/23/19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit


class ProductListViewController: BaseUIViewController {
    
    // MARK: - UI Element
    
    let searchBar = UISearchBar()
    
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero,collectionViewLayout: layout)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = .white
        collectionView.register(ImageItemCollectionViewCell.self, forCellWithReuseIdentifier: ImageItemCollectionViewCell.imageItemCellId)
        return collectionView
    }()
    
    // MARK: - View LifeCycle
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        extendedLayoutIncludesOpaqueBars = true
        navigationController?.navigationBar.setTransparent()
        navigationController?.navigationBar.barTintColor = Theme.shared.barTintColor
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        layoutCollectionView()
        setupViewNavigationBar()
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.navigationBar.barStyle = .default
    }
    
    @objc func touchUpInBackButton() {
        
    }
    
    // MARK: - Setup View
    
    private func setupViewNavigationBar() {
        searchBar.sizeToFit()
        navigationItem.titleView = searchBar
        
        let backTarget: Target = (target: self, selector: #selector(touchUpInBackButton))
        let backBarButtonModel = BarButtonItemModel(Resource.Image.backButton, backTarget)
        addBarItems(with: [backBarButtonModel], type: .left)
        
        let cartTarget: Target = (target: self, selector: #selector(touchUpInBackButton))
        let cartBarButtonModel = BarButtonItemModel(Resource.Image.cartButton, cartTarget)
        addBarItems(with: [cartBarButtonModel], type: .right)
    }
    
    // MARK: - Layout
    
    func layoutCollectionView() {
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

extension ProductListViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //        let productDetailVC = ProductDetailViewController()
        //        navigationController?.pushViewController(productDetailVC, animated: true)
    }
    
}
// MARK: - UICollectionViewDataSource

extension ProductListViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ImageItemCollectionViewCell.imageItemCellId, for: indexPath) as? ImageItemCollectionViewCell else {
            return UICollectionViewCell()
        }
        return cell
    }
}

// MARK: - UICollectionViewDelegateFlowLayout

extension ProductListViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (UIScreen.main.bounds.width - 12)/2
        let height = width + 80
        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}


