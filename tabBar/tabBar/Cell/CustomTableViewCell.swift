//
//  CustomTableViewCell.swift
//  tabbar
//
//  Created by Franklin  Stilhano on 11/10/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imagePerfil: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    static let identifier: String = "CustomTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
//        imagePerfil.tintColor = .black
    }

    func setupCell(perfil:Perfil){
        imagePerfil.image = perfil.imagePerfil
        nameLabel.text = perfil.name
    }
    
}
