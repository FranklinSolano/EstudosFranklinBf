//
//  CustomCollectionViewCell.swift
//  ResumoAulaCollectionViewAvancada
//
//  Created by Franklin  Stilhano on 11/10/22.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    static let identifier: String = "CustomCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 15
        imageView.contentMode = .scaleAspectFill
        imageView.layer.borderWidth = 2
        imageView.layer.borderColor = UIColor.purple.cgColor
    }
    
    func setupCell(titleImage: String){
        imageView.image = UIImage(named: titleImage)
    }

}
