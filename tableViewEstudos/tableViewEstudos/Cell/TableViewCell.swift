//
//  TableViewCell.swift
//  tableViewEstudos
//
//  Created by Franklin  Stilhano on 11/7/22.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    static let identifier: String = "TableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    
        
    }
    
    func setupCell(name:String){
        nameLabel.text = name
    }

   
    
}
