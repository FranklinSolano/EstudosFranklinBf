//
//  TableViewCell.swift
//  TableViewAvancada
//
//  Created by Franklin  Stilhano on 10/27/22.
//

import UIKit

class TableViewCell: UITableViewCell {

   
    @IBOutlet weak var imageCell: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    static let identifier: String = "TableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    func setupCell(user:User){
        imageCell.image = user.image
        nameLabel.text = user.name
    }
    
}
