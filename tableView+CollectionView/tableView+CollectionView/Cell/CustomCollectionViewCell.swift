//
//  CustomCollectionViewCell.swift
//  tableView+CollectionView
//
//  Created by Franklin  Stilhano on 11/8/22.
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
        imageCar.clipsToBounds = true
        imageCar.layer.cornerRadius = 15
        imageCar.layer.borderWidth = 2
        imageCar.layer.borderColor = UIColor.purple.cgColor
       
    }
    func setupCell(nameImage: String){
        imageCar.image = UIImage(named: nameImage)
    }

}
