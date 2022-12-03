//
//  PersonTableViewCell.swift
//  DesafioRoleta
//
//  Created by Franklin  Stilhano on 11/29/22.
//

import UIKit

class PersonTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var imageUser: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var imageCard: UIImageView!
    
    
    
    static let identifier: String = "PersonTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        configElements()
        selectionStyle = .none
        backgroundColor = .black
    }
    
    func configElements(){
        imageUser.image = UIImage(named: "Image")
        imageCard.image = UIImage(named: "credit-card")
        nameLabel.textColor = .white
    }
    
    func setupCell(data: Person){
        nameLabel.text = data.name
        imageUser.image = UIImage(named: data.image)
    }

  
    
}
