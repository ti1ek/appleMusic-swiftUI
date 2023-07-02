//
//  CollectionViewCell.swift
//  appleMusic-swiftUI
//
//  Created by ti1ek on 03.07.2023.
//

import UIKit
import SnapKit

class CollectionViewCell: UICollectionViewCell {
    
    static let identifier = "cell"
    
    // MARK: - Oulets
    
    lazy var image: UIImageView = {
        let image = UIImageView()
        image.clipsToBounds = true
        image.contentMode = .scaleAspectFit
        image.clipsToBounds = true
        image.layer.cornerRadius = 20
        return image
    }()
    
    lazy var nameItem: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 20, weight: .bold)
        return label
    }()
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Error")
    }
    
    // MARK: - Setup
    
    private func setupHierarchy() {
        addSubview(image)
        addSubview(nameItem)
    }
    
    private func setupLayout() {
        
        image.snp.makeConstraints { make in
            make.height.equalTo(self)
            make.width.equalTo(self)
        }
        
        nameItem.snp.makeConstraints { make in
            make.bottom.equalTo(image.snp.bottom).offset(-15)
            make.left.equalTo(image.snp.left).offset(10)
            make.width.equalTo(200)
        }
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.image.image = nil
        self.nameItem.text = nil
    }
    
    
    func configuration(model: SearchScreenModel) {
        image.image = UIImage(named: model.image)
        nameItem.text = model.name
    }
}
