//
//  CustomCollectionViewCell.swift
//  PrimeiroAppCollectionView
//
//  Created by Franklin  Stilhano on 11/7/22.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageCar: UIImageView!
    
    static let identifier: String = "CustomCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        imageCar.contentMode = .scaleAspectFill
    }
    
    func setupCell(nameImage: String) {
        imageCar.image = UIImage(named: nameImage)
    }

}
