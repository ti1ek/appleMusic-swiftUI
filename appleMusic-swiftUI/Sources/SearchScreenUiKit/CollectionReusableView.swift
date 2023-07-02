//
//  CollectionReusableView.swift
//  appleMusic-swiftUI
//
//  Created by ti1ek on 03.07.2023.
//

import UIKit

class CollectionReusableView: UICollectionReusableView {
    static let identifier = "header"
    
    // MARK: - Outlets
    
    lazy var header: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        label.textAlignment = .left
        return label
    }()
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup
    
    private func setupHierarchy() {
        addSubview(header)
    }
    
    private func setupLayout() {
        header.snp.makeConstraints { make in
            make.left.equalTo(self)
            make.bottom.equalTo(self).offset(-10)
        }
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        header.text = nil
    }
}
