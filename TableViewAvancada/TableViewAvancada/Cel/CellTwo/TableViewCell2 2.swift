//
//  TableViewCell2.swift
//  TableViewAvancada
//
//  Created by Franklin  Stilhano on 10/27/22.
//

import UIKit

class TableViewCell2: UITableViewCell {

    @IBOutlet weak var imageCell: UIImageView!
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var idadeLabel: UILabel!
    
    @IBOutlet weak var profissaoLabel: UILabel!
    
    @IBOutlet weak var salarioLabel: UILabel!
    
    @IBOutlet weak var coracaoButton: UIButton!
    
    
    static let identifier: String = "TableViewCell2"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setupCell(twoCell:Employee) {
        imageCell.image = twoCell.imageUser
        nameLabel.text = "Nome: \(twoCell.name)"
        idadeLabel.text = "Idade: \(twoCell.age)"
        profissaoLabel.text = "Profissao: \(twoCell.profession)"
        salarioLabel.text = "Salario: \(twoCell.salary)"
        
    }
    
}
